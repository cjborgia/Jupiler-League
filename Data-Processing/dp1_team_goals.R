
##### read in required packages #####

library(data.table)
library(tidyverse)

require(data.table)

##### load in needed files #####

setwd("C:/Users/chris/Desktop/Soccer/Belgium/Juniper/Fbref_Data")

#create a list of the files from your target directory
file_list <- list.files(path="C:/Users/chris/Desktop/Soccer/Belgium/Juniper/Fbref_Data")

#initiate a blank data frame, each iteration of the loop will append the data from the given file to this variable

names <- substr(file_list,1,nchar(file_list)-4)

for(i in names){
  filepath <- file.path("C:/Users/chris/Desktop/Soccer/Belgium/Juniper/Fbref_Data",paste(i,".csv",sep=""))
  assign(i, read.csv(filepath))
}

setwd("C:/Users/chris/Desktop/Soccer/Belgium/Juniper/Odds_data")

#create a list of the files from your target directory
file_list <- list.files(path="C:/Users/chris/Desktop/Soccer/Belgium/Juniper/Odds_data")

#initiate a blank data frame, each iteration of the loop will append the data from the given file to this variable
dataset <- data.frame()

names <- substr(file_list,1,nchar(file_list)-4)

for(i in names){
  filepath <- file.path("C:/Users/chris/Desktop/Soccer/Belgium/Juniper/Odds_data",paste(i,".csv",sep=""))
  assign(i, read.csv(filepath))
}

##### create Y variable goals scored and allowed home and away #####

##### Football Reference does not have home and away goals prior to the 2014-15 season.
##### To get more data we use data from https://www.football-data.co.uk/ 
##### Create funtion to summarise Goals from https://www.football-data.co.uk/ data

total_goals <- function(df) {
  goals2 <- df %>% group_by(HomeTeam) %>% summarise(Home_Goals = sum(FTHG))
  
  goals3 <- df %>% group_by(AwayTeam) %>% summarise(Away_Goals = sum(FTAG))
  
  goals4 <- left_join(goals2, goals3, by = c("HomeTeam"= "AwayTeam"))
  
  goals4$Total_goals = goals4$Home_Goals + goals4$Away_Goals
  
  goals5 <- df %>% count(HomeTeam)
  
  goals6 <- df %>% count(AwayTeam)
  
  goals7 <- left_join(goals4 , goals5, "HomeTeam")
  
  goals8 <- left_join(goals7 , goals6, by = c("HomeTeam"  = "AwayTeam"))
  
  goals8 <- rename(goals8, Home_Games = n.x)
  
  goals8 <- rename(goals8, Away_Games = n.y)
  
  goals8$Total_Games = goals8$Home_Games + goals8$Away_Games
  
  goals9 <- df %>% group_by(AwayTeam) %>% summarise(Away_Goals_Allowed = sum(FTHG))
  
  goals10 <- df %>% group_by(HomeTeam) %>% summarise(Home_Goals_Allowed = sum(FTAG))
  
  goals11 <- left_join(goals9, goals10, by = c("AwayTeam" = "HomeTeam"))
  
  goals11$Total_goals_Allowed = goals11$Away_Goals_Allowed + goals11$Home_Goals_Allowed
  
  goals12 <- left_join(goals8,goals11, by = c("HomeTeam" = "AwayTeam"))

  return(goals12)
}

##### Use function to calculate goal info for each year

Goals_0708 <- total_goals(B1_0708)
Goals_0809 <- total_goals(B1_0809)
Goals_0910 <- total_goals(B1_0910)
Goals_1011 <- total_goals(B1_1011)
Goals_1112 <- total_goals(B1_1112)
Goals_1213 <- total_goals(B1_1213)
Goals_1314 <- total_goals(B1_1314)
Goals_1415 <- total_goals(B1_1415)
Goals_1516 <- total_goals(B1_1516)
Goals_1617 <- total_goals(B1_1617)
Goals_1718 <- total_goals(B1_1718)
Goals_1819 <- total_goals(B1_1819)
Goals_1920 <- total_goals(B1_1920)

##### Will use FBref names so need to rename https://www.football-data.co.uk/ data

rename_teams <- function(df_column) {
  df_column <-  ifelse(df_column == "Standard" , "Standard Liège",
                                 ifelse(df_column == "Waregem", "Zulte Waregem",
                                        ifelse(df_column == "Germinal", "Beerschot",
                                               ifelse(df_column == "Bergen", "Mons",
                                                      ifelse(df_column == "St Truiden", "Sint-Truiden",
                                                             ifelse(df_column == "FC Brussels", "Brussels",
                                                                    ifelse(df_column == "Oud-Heverlee Leuven","OH Leuven",
                                                                           ifelse(df_column == "Waasland-Beveren","Waasland-Bev",
                                                                                  ifelse(df_column == "Mouscron-Peruwelz","Mouscron",
                                                                                         
                                                                                         df_column)))))))))
  
}

Goals_0708$HomeTeam <- rename_teams(Goals_0708$HomeTeam)
Goals_0809$HomeTeam <- rename_teams(Goals_0809$HomeTeam)
Goals_0910$HomeTeam <- rename_teams(Goals_0910$HomeTeam)
Goals_1011$HomeTeam <- rename_teams(Goals_1011$HomeTeam)
Goals_1112$HomeTeam <- rename_teams(Goals_1112$HomeTeam)
Goals_1213$HomeTeam <- rename_teams(Goals_1213$HomeTeam)
Goals_1314$HomeTeam <- rename_teams(Goals_1314$HomeTeam)

##### FBref changed name from Mouscron to RE Mouscron

rename_teams_1 <- function(df_column) {
  df_column <-  ifelse(df_column == "Standard" , "Standard Liège",
                       ifelse(df_column == "Waregem", "Zulte Waregem",
                              ifelse(df_column == "Germinal", "Beerschot",
                                     ifelse(df_column == "Bergen", "Mons",
                                            ifelse(df_column == "St Truiden", "Sint-Truiden",
                                                   ifelse(df_column == "FC Brussels", "Brussels",
                                                          ifelse(df_column == "Oud-Heverlee Leuven","OH Leuven",
                                                                 ifelse(df_column == "Waasland-Beveren","Waasland-Bev",
                                                                        ifelse(df_column =="Mouscron-Peruwelz","RE Mouscron",
                                                                               df_column)))))))))
}


Goals_1415$HomeTeam <- rename_teams_1(Goals_1415$HomeTeam)


Goals_1516$HomeTeam <- rename_teams_1(Goals_1516$HomeTeam)

##### FBref changed name from Mouscron to Excel Mouscron

rename_teams_2 <- function(df_column) {
  df_column <-  ifelse(df_column == "Standard" , "Standard Liège",
                       ifelse(df_column == "Waregem", "Zulte Waregem",
                              ifelse(df_column == "Germinal", "Beerschot",
                                     ifelse(df_column == "Bergen", "Mons",
                                            ifelse(df_column == "St Truiden", "Sint-Truiden",
                                                   ifelse(df_column == "FC Brussels", "Brussels",
                                                          ifelse(df_column == "Oud-Heverlee Leuven","OH Leuven",
                                                                 ifelse(df_column == "Waasland-Beveren","Waasland-Bev",
                                                                        ifelse(df_column =="Mouscron","Excel Mouscron",
                                                                               df_column)))))))))
}

Goals_1617$HomeTeam <- rename_teams_2(Goals_1617$HomeTeam)
Goals_1718$HomeTeam <- rename_teams_2(Goals_1718$HomeTeam)
Goals_1819$HomeTeam <- rename_teams_2(Goals_1819$HomeTeam)
Goals_1920$HomeTeam <- rename_teams_2(Goals_1920$HomeTeam)

##### As a data quality check compare total goals to FB ref data
##### Previously noticed small discrepancies prior to 0708 

check_goals <- function(betting_data, fbref_data) {
  check1 <- left_join(betting_data, fbref_data[c("Squad", "GF", "GA")], by = c("HomeTeam" = "Squad"))
  
  check1$Home_check <- ifelse(check1$Total_goals == check1$GF, 0, 1)
  check1$Away_check <- ifelse(check1$Total_goals_Allowed == check1$GA, 0, 1)
  check1$Total_check <- check1$Home_check + check1$Away_check 
  
  return(sum(check1$Total_check))
  
}

check_goals(Goals_0708, league_table_overall_0708)
check_goals(Goals_0809, league_table_overall_0809)

##### I checked a 3rd party https://www.transfermarkt.us/ which matches FBref
##### Will use FBref data for 0809

Goals_0809$Home_Goals <- ifelse(Goals_0809$HomeTeam == "Genk", 23 , Goals_0809$Home_Goals)
Goals_0809$Away_Goals <- ifelse(Goals_0809$HomeTeam == "Genk", 25 , Goals_0809$Away_Goals)
Goals_0809$Away_Goals_Allowed <- ifelse(Goals_0809$HomeTeam == "Cercle Brugge", 29 , Goals_0809$Away_Goals_Allowed)
Goals_0809$Total_goals <- Goals_0809$Home_Goals + Goals_0809$Away_Goals
Goals_0809$Total_goals_Allowed <- Goals_0809$Away_Goals_Allowed + Goals_0809$Home_Goals_Allowed

sum(Goals_0809$Total_goals)
sum(Goals_0809$Total_goals_Allowed)

check_goals(Goals_0910, league_table_overall_0910)
check_goals(Goals_1011, league_table_overall_1011)
check_goals(Goals_1112, league_table_overall_1112)
check_goals(Goals_1213, league_table_overall_1213)
check_goals(Goals_1314, league_table_overall_1314)
check_goals(Goals_1415, league_table_overall_1415)

##### Starting in 1516 Fbref League Table includes non regular season games
##### A manual visual check is performed 

##### https://fbref.com/en/comps/37/1455/2015-2016-Belgian-Pro-League-Stats Regular Season Table
##### Was a difference compared to https://www.transfermarkt.us/jupiler-pro-league/tabelle/wettbewerb/BE1?saison_id=2015
##### Confirmed https://www.football-data.co.uk/ data for 1516

check_goals(Goals_1516, league_table_overall_1516)
check_goals(Goals_1617, league_table_overall_1617)
check_goals(Goals_1718, league_table_overall_1718)
check_goals(Goals_1819, league_table_overall_1819)

##### No playoffs due to covid in 1920 so these match

check_goals(Goals_1920, league_table_overall_1920)



