
library(rvest)
library(readr)  

######################## 2007-2008 #####################################

season <- c("2007-2008")
id <- c("273")

##### Team Gk

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/keepers/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_gk_0708 <- data.frame(html_table(tables1[1]))

##### Standard

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/stats/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_standard_0708 <- data.frame(html_table(tables1[1]))

##### Shooting

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/shooting/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_shooting_0708 <- data.frame(html_table(tables1[1]))

##### Playing Time

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/playingtime/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_pt_0708 <- data.frame(html_table(tables1[1]))

##### Misc

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/misc/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_misc_0708 <- data.frame(html_table(tables1[1]))

######################## 2008-2009 #####################################

season <- c("2008-2009")
id <- c("329")

##### Team Gk

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/keepers/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_gk_0809 <- data.frame(html_table(tables1[1]))

##### Standard

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/stats/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_standard_0809 <- data.frame(html_table(tables1[1]))

##### Shooting

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/shooting/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_shooting_0809 <- data.frame(html_table(tables1[1]))

##### Playing Time

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/playingtime/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_pt_0809 <- data.frame(html_table(tables1[1]))

##### Misc

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/misc/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_misc_0809 <- data.frame(html_table(tables1[1]))

######################## 2009-2010 #####################################

season <- c("2009-2010")
id <- c("388")

##### Team Gk

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/keepers/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_gk_0910 <- data.frame(html_table(tables1[1]))

##### Standard

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/stats/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_standard_0910 <- data.frame(html_table(tables1[1]))

##### Shooting

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/shooting/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_shooting_0910 <- data.frame(html_table(tables1[1]))

##### Playing Time

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/playingtime/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_pt_0910 <- data.frame(html_table(tables1[1]))

##### Misc

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/misc/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_misc_0910 <- data.frame(html_table(tables1[1]))

######################## 2010-2011 #####################################

season <- c("2010-2011")
id <- c("456")

##### Team Gk

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/keepers/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_gk_1011 <- data.frame(html_table(tables1[1]))

##### Standard

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/stats/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_standard_1011 <- data.frame(html_table(tables1[1]))

##### Shooting

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/shooting/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_shooting_1011 <- data.frame(html_table(tables1[1]))

##### Playing Time

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/playingtime/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_pt_1011 <- data.frame(html_table(tables1[1]))

##### Misc

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/misc/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_misc_1011 <- data.frame(html_table(tables1[1]))

######################## 2011-2012 #####################################

season <- c("2011-2012")
id <- c("523")

##### Team Gk

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/keepers/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_gk_1112 <- data.frame(html_table(tables1[1]))

##### Standard

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/stats/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_standard_1112 <- data.frame(html_table(tables1[1]))

##### Shooting

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/shooting/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_shooting_1112 <- data.frame(html_table(tables1[1]))

##### Playing Time

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/playingtime/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_pt_1112 <- data.frame(html_table(tables1[1]))

##### Misc

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/misc/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_misc_1112 <- data.frame(html_table(tables1[1]))

######################## 2012-2013 #####################################

season <- c("2012-2013")
id <- c("591")

##### Team Gk

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/keepers/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_gk_1213 <- data.frame(html_table(tables1[1]))

##### Standard

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/stats/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_standard_1213 <- data.frame(html_table(tables1[1]))

##### Shooting

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/shooting/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_shooting_1213 <- data.frame(html_table(tables1[1]))

##### Playing Time

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/playingtime/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_pt_1213 <- data.frame(html_table(tables1[1]))

##### Misc

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/misc/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_misc_1213 <- data.frame(html_table(tables1[1]))


######################## 2013-2014 #####################################

season <- c("2013-2014")
id <- c("657")

##### Team Gk

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/keepers/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_gk_1314 <- data.frame(html_table(tables1[1]))

##### Standard

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/stats/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_standard_1314 <- data.frame(html_table(tables1[1]))

##### Shooting

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/shooting/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_shooting_1314 <- data.frame(html_table(tables1[1]))

##### Playing Time

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/playingtime/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_pt_1314 <- data.frame(html_table(tables1[1]))

##### Misc

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/misc/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_misc_1314 <- data.frame(html_table(tables1[1]))

######################## 2014-2015 #####################################

season <- c("2014-2015")
id <- c("721")

##### Team Gk

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/keepers/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_gk_1415 <- data.frame(html_table(tables1[1]))

##### Standard

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/stats/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_standard_1415 <- data.frame(html_table(tables1[1]))

##### Shooting

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/shooting/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_shooting_1415 <- data.frame(html_table(tables1[1]))

##### Playing Time

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/playingtime/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_pt_1415 <- data.frame(html_table(tables1[1]))

##### Misc

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/misc/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_misc_1415 <- data.frame(html_table(tables1[1]))

######################## 2015-2016 #####################################

season <- c("2015-2016")
id <- c("1455")

##### Team Gk

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/keepers/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_gk_1516 <- data.frame(html_table(tables1[1]))

##### Standard

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/stats/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_standard_1516 <- data.frame(html_table(tables1[1]))

##### Shooting

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/shooting/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_shooting_1516 <- data.frame(html_table(tables1[1]))

##### Playing Time

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/playingtime/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_pt_1516 <- data.frame(html_table(tables1[1]))

##### Misc

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/misc/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_misc_1516 <- data.frame(html_table(tables1[1]))

######################## 2016-2017 #####################################

season <- c("2016-2017")
id <- c("1514")

##### Team Gk

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/keepers/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_gk_1617 <- data.frame(html_table(tables1[1]))

##### Standard

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/stats/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_standard_1617 <- data.frame(html_table(tables1[1]))

##### Shooting

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/shooting/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_shooting_1617 <- data.frame(html_table(tables1[1]))

##### Playing Time

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/playingtime/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_pt_1617 <- data.frame(html_table(tables1[1]))

##### Misc

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/misc/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_misc_1617 <- data.frame(html_table(tables1[1]))

######################## 2017-2018 #####################################

season <- c("2017-2018")
id <- c("1619")

##### Team Gk

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/keepers/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_gk_1718 <- data.frame(html_table(tables1[1]))

##### Standard

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/stats/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_standard_1718 <- data.frame(html_table(tables1[1]))

##### Shooting

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/shooting/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_shooting_1718 <- data.frame(html_table(tables1[1]))

##### Playing Time

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/playingtime/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_pt_1718 <- data.frame(html_table(tables1[1]))

##### Misc

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/misc/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_misc_1718 <- data.frame(html_table(tables1[1]))

######################## 2018-2019 #####################################

season <- c("2018-2019")
id <- c("2246")

##### Team Gk

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/keepers/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_gk_1819 <- data.frame(html_table(tables1[1]))

##### Standard

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/stats/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_standard_1819 <- data.frame(html_table(tables1[1]))

##### Shooting

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/shooting/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_shooting_1819 <- data.frame(html_table(tables1[1]))

##### Playing Time

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/playingtime/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_pt_1819 <- data.frame(html_table(tables1[1]))

##### Misc

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/misc/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_misc_1819 <- data.frame(html_table(tables1[1]))

######################## 2019-2020 #####################################

season <- c("2019-2020")
id <- c("3216")

##### Team Gk

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/keepers/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_gk_1920 <- data.frame(html_table(tables1[1]))

##### Standard

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/stats/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_standard_1920 <- data.frame(html_table(tables1[1]))

##### Shooting

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/shooting/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_shooting_1920 <- data.frame(html_table(tables1[1]))

##### Playing Time

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/playingtime/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_pt_1920 <- data.frame(html_table(tables1[1]))

##### Misc

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/misc/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

team_misc_1920 <- data.frame(html_table(tables1[1]))


##### Save datasets #####

setwd("C:/Users/chris/Desktop/Soccer/Belgium/Juniper/Fbref_Data")

write.csv(team_gk_1920,"team_gk_1920.csv")
write.csv(team_gk_1819,"team_gk_1819.csv")
write.csv(team_gk_1718,"team_gk_1718.csv")
write.csv(team_gk_1617,"team_gk_1617.csv")
write.csv(team_gk_1516,"team_gk_1516.csv")
write.csv(team_gk_1415,"team_gk_1415.csv")
write.csv(team_gk_1314,"team_gk_1314.csv")
write.csv(team_gk_1213,"team_gk_1213.csv")
write.csv(team_gk_1112,"team_gk_1112.csv")
write.csv(team_gk_1011,"team_gk_1011.csv")
write.csv(team_gk_0910,"team_gk_0910.csv")
write.csv(team_gk_0809,"team_gk_0809.csv")
write.csv(team_gk_0708,"team_gk_0708.csv")

write.csv(team_standard_1920,"team_standard_1920.csv")
write.csv(team_standard_1819,"team_standard_1819.csv")
write.csv(team_standard_1718,"team_standard_1718.csv")
write.csv(team_standard_1617,"team_standard_1617.csv")
write.csv(team_standard_1516,"team_standard_1516.csv")
write.csv(team_standard_1415,"team_standard_1415.csv")
write.csv(team_standard_1314,"team_standard_1314.csv")
write.csv(team_standard_1213,"team_standard_1213.csv")
write.csv(team_standard_1112,"team_standard_1112.csv")
write.csv(team_standard_1011,"team_standard_1011.csv")
write.csv(team_standard_0910,"team_standard_0910.csv")
write.csv(team_standard_0809,"team_standard_0809.csv")
write.csv(team_standard_0708,"team_standard_0708.csv")

write.csv(team_shooting_1920,"team_shooting_1920.csv")
write.csv(team_shooting_1819,"team_shooting_1819.csv")
write.csv(team_shooting_1718,"team_shooting_1718.csv")
write.csv(team_shooting_1617,"team_shooting_1617.csv")
write.csv(team_shooting_1516,"team_shooting_1516.csv")
write.csv(team_shooting_1415,"team_shooting_1415.csv")
write.csv(team_shooting_1314,"team_shooting_1314.csv")
write.csv(team_shooting_1213,"team_shooting_1213.csv")
write.csv(team_shooting_1112,"team_shooting_1112.csv")
write.csv(team_shooting_1011,"team_shooting_1011.csv")
write.csv(team_shooting_0910,"team_shooting_0910.csv")
write.csv(team_shooting_0809,"team_shooting_0809.csv")
write.csv(team_shooting_0708,"team_shooting_0708.csv")

write.csv(team_pt_1920,"team_pt_1920.csv")
write.csv(team_pt_1819,"team_pt_1819.csv")
write.csv(team_pt_1718,"team_pt_1718.csv")
write.csv(team_pt_1617,"team_pt_1617.csv")
write.csv(team_pt_1516,"team_pt_1516.csv")
write.csv(team_pt_1415,"team_pt_1415.csv")
write.csv(team_pt_1314,"team_pt_1314.csv")
write.csv(team_pt_1213,"team_pt_1213.csv")
write.csv(team_pt_1112,"team_pt_1112.csv")
write.csv(team_pt_1011,"team_pt_1011.csv")
write.csv(team_pt_0910,"team_pt_0910.csv")
write.csv(team_pt_0809,"team_pt_0809.csv")
write.csv(team_pt_0708,"team_pt_0708.csv")

write.csv(team_misc_1920,"team_misc_1920.csv")
write.csv(team_misc_1819,"team_misc_1819.csv")
write.csv(team_misc_1718,"team_misc_1718.csv")
write.csv(team_misc_1617,"team_misc_1617.csv")
write.csv(team_misc_1516,"team_misc_1516.csv")
write.csv(team_misc_1415,"team_misc_1415.csv")
write.csv(team_misc_1314,"team_misc_1314.csv")
write.csv(team_misc_1213,"team_misc_1213.csv")
write.csv(team_misc_1112,"team_misc_1112.csv")
write.csv(team_misc_1011,"team_misc_1011.csv")
write.csv(team_misc_0910,"team_misc_0910.csv")
write.csv(team_misc_0809,"team_misc_0809.csv")
write.csv(team_misc_0708,"team_misc_0708.csv")
