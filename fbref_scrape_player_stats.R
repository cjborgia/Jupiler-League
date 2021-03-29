library(rvest)
library(readr)    # for type_convert

######################## 2007-2008 #####################################

season <- c("2007-2008")
id <- c("273")

##### League Table 

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

league_table_overall_0708 <- data.frame(html_table(tables1[1]))
league_table_home_away_0708 <- data.frame(html_table(tables1[2]))

##### Standard Stats 

### Players

url2 <- paste0("https://fbref.com/en/comps/37/",id,"/stats/",season,"-Belgian-First-Division-Stats")

h <- url2 %>% read_html()    # be kind; don't rescrape unless necessary

player_standard_stats_0708 <- h %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_standard') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types

##### Goalkeeping Stats 

### Players

url3 <- paste0("https://fbref.com/en/comps/37/",id,"/keepers/",season,"-Belgian-First-Division-Stats")

j <- url3 %>% read_html()    # be kind; don't rescrape unless necessary

player_goalkeep_stats_0708 <- j %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_keeper') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types

##### Shooting Stats 

### Players

url4 <- paste0("https://fbref.com/en/comps/37/",id,"/shooting/",season,"-Belgian-First-Division-Stats")

k <- url4 %>% read_html()    # be kind; don't rescrape unless necessary

player_shooting_stats_0708 <- k %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_shooting') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types

##### Playing Time Stats 

### Players

url5 <- paste0("https://fbref.com/en/comps/37/",id,"/playingtime/",season,"-Belgian-First-Division-Stats")

a <- url5 %>% read_html()    # be kind; don't rescrape unless necessary

player_pt_stats_0708 <- a %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_playing_time') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types

##### Playing Misc 

### Players

url6 <- paste0("https://fbref.com/en/comps/37/",id,"/misc/",season,"-Belgian-First-Division-Stats")

b <- url6 %>% read_html()    # be kind; don't rescrape unless necessary

player_misc_stats_0708 <- b %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_misc') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types


######################## 2008-2009 #####################################

season <- c("2008-2009")
id <- c("329")

##### League Table 

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

league_table_overall_0809 <- data.frame(html_table(tables1[1]))
league_table_home_away_0809 <- data.frame(html_table(tables1[2]))

##### Standard Stats 

### Players

url2 <- paste0("https://fbref.com/en/comps/37/",id,"/stats/",season,"-Belgian-First-Division-Stats")

h <- url2 %>% read_html()    # be kind; don't rescrape unless necessary

player_standard_stats_0809 <- h %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_standard') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types

##### Goalkeeping Stats 

### Players

url3 <- paste0("https://fbref.com/en/comps/37/",id,"/keepers/",season,"-Belgian-First-Division-Stats")

j <- url3 %>% read_html()    # be kind; don't rescrape unless necessary

player_goalkeep_stats_0809 <- j %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_keeper') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types

##### Shooting Stats 

### Players

url4 <- paste0("https://fbref.com/en/comps/37/",id,"/shooting/",season,"-Belgian-First-Division-Stats")

k <- url4 %>% read_html()    # be kind; don't rescrape unless necessary

player_shooting_stats_0809 <- k %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_shooting') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types

##### Playing Time Stats 

### Players

url5 <- paste0("https://fbref.com/en/comps/37/",id,"/playingtime/",season,"-Belgian-First-Division-Stats")

a <- url5 %>% read_html()    # be kind; don't rescrape unless necessary

player_pt_stats_0809 <- a %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_playing_time') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types

##### Playing Misc 

### Players

url6 <- paste0("https://fbref.com/en/comps/37/",id,"/misc/",season,"-Belgian-First-Division-Stats")

b <- url6 %>% read_html()    # be kind; don't rescrape unless necessary

player_misc_stats_0809 <- b %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_misc') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types


######################## 2009-2010 #####################################

season <- c("2009-2010")
id <- c("388")

##### League Table 

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

league_table_overall_0910 <- data.frame(html_table(tables1[1]))
league_table_home_away_0910 <- data.frame(html_table(tables1[2]))

##### Standard Stats 

### Players

url2 <- paste0("https://fbref.com/en/comps/37/",id,"/stats/",season,"-Belgian-First-Division-Stats")

h <- url2 %>% read_html()    # be kind; don't rescrape unless necessary

player_standard_stats_0910 <- h %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_standard') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types

##### Goalkeeping Stats 

### Players

url3 <- paste0("https://fbref.com/en/comps/37/",id,"/keepers/",season,"-Belgian-First-Division-Stats")

j <- url3 %>% read_html()    # be kind; don't rescrape unless necessary

player_goalkeep_stats_0910 <- j %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_keeper') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types

##### Shooting Stats 

### Players

url4 <- paste0("https://fbref.com/en/comps/37/",id,"/shooting/",season,"-Belgian-First-Division-Stats")

k <- url4 %>% read_html()    # be kind; don't rescrape unless necessary

player_shooting_stats_0910 <- k %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_shooting') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types

##### Playing Time Stats 

### Players

url5 <- paste0("https://fbref.com/en/comps/37/",id,"/playingtime/",season,"-Belgian-First-Division-Stats")

a <- url5 %>% read_html()    # be kind; don't rescrape unless necessary

player_pt_stats_0910 <- a %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_playing_time') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types

##### Playing Misc 

### Players

url6 <- paste0("https://fbref.com/en/comps/37/",id,"/misc/",season,"-Belgian-First-Division-Stats")

b <- url6 %>% read_html()    # be kind; don't rescrape unless necessary

player_misc_stats_0910 <- b %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_misc') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types


######################## 2010-2011 #####################################

season <- c("2010-2011")
id <- c("456")

##### League Table 

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

league_table_overall_1011 <- data.frame(html_table(tables1[1]))
league_table_home_away_1011 <- data.frame(html_table(tables1[2]))

##### Standard Stats 

### Players

url2 <- paste0("https://fbref.com/en/comps/37/",id,"/stats/",season,"-Belgian-First-Division-Stats")

h <- url2 %>% read_html()    # be kind; don't rescrape unless necessary

player_standard_stats_1011 <- h %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_standard') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types

##### Goalkeeping Stats 

### Players

url3 <- paste0("https://fbref.com/en/comps/37/",id,"/keepers/",season,"-Belgian-First-Division-Stats")

j <- url3 %>% read_html()    # be kind; don't rescrape unless necessary

player_goalkeep_stats_1011 <- j %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_keeper') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types

##### Shooting Stats 

### Players

url4 <- paste0("https://fbref.com/en/comps/37/",id,"/shooting/",season,"-Belgian-First-Division-Stats")

k <- url4 %>% read_html()    # be kind; don't rescrape unless necessary

player_shooting_stats_1011 <- k %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_shooting') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types

##### Playing Time Stats 

### Players

url5 <- paste0("https://fbref.com/en/comps/37/",id,"/playingtime/",season,"-Belgian-First-Division-Stats")

a <- url5 %>% read_html()    # be kind; don't rescrape unless necessary

player_pt_stats_1011 <- a %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_playing_time') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types

##### Playing Misc 

### Players

url6 <- paste0("https://fbref.com/en/comps/37/",id,"/misc/",season,"-Belgian-First-Division-Stats")

b <- url6 %>% read_html()    # be kind; don't rescrape unless necessary

player_misc_stats_1011 <- b %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_misc') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types


######################## 2011-2012 #####################################

season <- c("2011-2012")
id <- c("523")

##### League Table 

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

league_table_overall_1112 <- data.frame(html_table(tables1[1]))
league_table_home_away_1112 <- data.frame(html_table(tables1[2]))

##### Standard Stats 

### Players

url2 <- paste0("https://fbref.com/en/comps/37/",id,"/stats/",season,"-Belgian-First-Division-Stats")

h <- url2 %>% read_html()    # be kind; don't rescrape unless necessary

player_standard_stats_1112 <- h %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_standard') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types

##### Goalkeeping Stats 

### Players

url3 <- paste0("https://fbref.com/en/comps/37/",id,"/keepers/",season,"-Belgian-First-Division-Stats")

j <- url3 %>% read_html()    # be kind; don't rescrape unless necessary

player_goalkeep_stats_1112 <- j %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_keeper') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types

##### Shooting Stats 

### Players

url4 <- paste0("https://fbref.com/en/comps/37/",id,"/shooting/",season,"-Belgian-First-Division-Stats")

k <- url4 %>% read_html()    # be kind; don't rescrape unless necessary

player_shooting_stats_1112 <- k %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_shooting') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types

##### Playing Time Stats 

### Players

url5 <- paste0("https://fbref.com/en/comps/37/",id,"/playingtime/",season,"-Belgian-First-Division-Stats")

a <- url5 %>% read_html()    # be kind; don't rescrape unless necessary

player_pt_stats_1112 <- a %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_playing_time') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types

##### Playing Misc 

### Players

url6 <- paste0("https://fbref.com/en/comps/37/",id,"/misc/",season,"-Belgian-First-Division-Stats")

b <- url6 %>% read_html()    # be kind; don't rescrape unless necessary

player_misc_stats_1112 <- b %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_misc') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types


######################## 2012-2013 #####################################

season <- c("2012-2013")
id <- c("591")

##### League Table 

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

league_table_overall_1213 <- data.frame(html_table(tables1[1]))
league_table_home_away_1213 <- data.frame(html_table(tables1[2]))

##### Standard Stats 

### Players

url2 <- paste0("https://fbref.com/en/comps/37/",id,"/stats/",season,"-Belgian-First-Division-Stats")

h <- url2 %>% read_html()    # be kind; don't rescrape unless necessary

player_standard_stats_1213 <- h %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_standard') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types

##### Goalkeeping Stats 

### Players

url3 <- paste0("https://fbref.com/en/comps/37/",id,"/keepers/",season,"-Belgian-First-Division-Stats")

j <- url3 %>% read_html()    # be kind; don't rescrape unless necessary

player_goalkeep_stats_1213 <- j %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_keeper') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types

##### Shooting Stats 

### Players

url4 <- paste0("https://fbref.com/en/comps/37/",id,"/shooting/",season,"-Belgian-First-Division-Stats")

k <- url4 %>% read_html()    # be kind; don't rescrape unless necessary

player_shooting_stats_1213 <- k %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_shooting') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types

##### Playing Time Stats 

### Players

url5 <- paste0("https://fbref.com/en/comps/37/",id,"/playingtime/",season,"-Belgian-First-Division-Stats")

a <- url5 %>% read_html()    # be kind; don't rescrape unless necessary

player_pt_stats_1213 <- a %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_playing_time') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types

##### Playing Misc 

### Players

url6 <- paste0("https://fbref.com/en/comps/37/",id,"/misc/",season,"-Belgian-First-Division-Stats")

b <- url6 %>% read_html()    # be kind; don't rescrape unless necessary

player_misc_stats_1213 <- b %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_misc') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types


######################## 2013-2014 #####################################

season <- c("2013-2014")
id <- c("657")

##### League Table 

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

league_table_overall_1314 <- data.frame(html_table(tables1[1]))
league_table_home_away_1314 <- data.frame(html_table(tables1[2]))

##### Standard Stats 

### Players

url2 <- paste0("https://fbref.com/en/comps/37/",id,"/stats/",season,"-Belgian-First-Division-Stats")

h <- url2 %>% read_html()    # be kind; don't rescrape unless necessary

player_standard_stats_1314 <- h %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_standard') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types

##### Goalkeeping Stats 

### Players

url3 <- paste0("https://fbref.com/en/comps/37/",id,"/keepers/",season,"-Belgian-First-Division-Stats")

j <- url3 %>% read_html()    # be kind; don't rescrape unless necessary

player_goalkeep_stats_1314 <- j %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_keeper') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types

##### Shooting Stats 

### Players

url4 <- paste0("https://fbref.com/en/comps/37/",id,"/shooting/",season,"-Belgian-First-Division-Stats")

k <- url4 %>% read_html()    # be kind; don't rescrape unless necessary

player_shooting_stats_1314 <- k %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_shooting') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types

##### Playing Time Stats 

### Players

url5 <- paste0("https://fbref.com/en/comps/37/",id,"/playingtime/",season,"-Belgian-First-Division-Stats")

a <- url5 %>% read_html()    # be kind; don't rescrape unless necessary

player_pt_stats_1314 <- a %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_playing_time') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types

##### Playing Misc 

### Players

url6 <- paste0("https://fbref.com/en/comps/37/",id,"/misc/",season,"-Belgian-First-Division-Stats")

b <- url6 %>% read_html()    # be kind; don't rescrape unless necessary

player_misc_stats_1314 <- b %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_misc') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types


######################## 2014-2015 #####################################

season <- c("2014-2015")
id <- c("721")

##### League Table 

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

league_table_overall_1415 <- data.frame(html_table(tables1[1]))
league_table_home_away_1415 <- data.frame(html_table(tables1[2]))

##### Standard Stats 

### Players

url2 <- paste0("https://fbref.com/en/comps/37/",id,"/stats/",season,"-Belgian-First-Division-Stats")

h <- url2 %>% read_html()    # be kind; don't rescrape unless necessary

player_standard_stats_1415 <- h %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_standard') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types

##### Goalkeeping Stats 

### Players

url3 <- paste0("https://fbref.com/en/comps/37/",id,"/keepers/",season,"-Belgian-First-Division-Stats")

j <- url3 %>% read_html()    # be kind; don't rescrape unless necessary

player_goalkeep_stats_1415 <- j %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_keeper') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types

##### Shooting Stats 

### Players

url4 <- paste0("https://fbref.com/en/comps/37/",id,"/shooting/",season,"-Belgian-First-Division-Stats")

k <- url4 %>% read_html()    # be kind; don't rescrape unless necessary

player_shooting_stats_1415 <- k %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_shooting') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types

##### Playing Time Stats 

### Players

url5 <- paste0("https://fbref.com/en/comps/37/",id,"/playingtime/",season,"-Belgian-First-Division-Stats")

a <- url5 %>% read_html()    # be kind; don't rescrape unless necessary

player_pt_stats_1415 <- a %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_playing_time') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types

##### Playing Misc 

### Players

url6 <- paste0("https://fbref.com/en/comps/37/",id,"/misc/",season,"-Belgian-First-Division-Stats")

b <- url6 %>% read_html()    # be kind; don't rescrape unless necessary

player_misc_stats_1415 <- b %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_misc') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types


#### Fixtures

url1 <- paste0("https://fbref.com/en/comps/37/721/schedule/2014-2015-Belgian-Pro-League-Scores-and-Fixtures")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

fixtures_1415 <- data.frame(html_table(tables1[1]))

######################## 2015-2016 #####################################

season <- c("2015-2016")
id <- c("1455")

##### League Table 

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

league_table_overall_1516 <- data.frame(html_table(tables1[1]))
league_table_home_away_1516 <- data.frame(html_table(tables1[2]))

##### Standard Stats 

### Players

url2 <- paste0("https://fbref.com/en/comps/37/",id,"/stats/",season,"-Belgian-First-Division-Stats")

h <- url2 %>% read_html()    # be kind; don't rescrape unless necessary

player_standard_stats_1516 <- h %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_standard') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types

##### Goalkeeping Stats 

### Players

url3 <- paste0("https://fbref.com/en/comps/37/",id,"/keepers/",season,"-Belgian-First-Division-Stats")

j <- url3 %>% read_html()    # be kind; don't rescrape unless necessary

player_goalkeep_stats_1516 <- j %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_keeper') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types

##### Shooting Stats 

### Players

url4 <- paste0("https://fbref.com/en/comps/37/",id,"/shooting/",season,"-Belgian-First-Division-Stats")

k <- url4 %>% read_html()    # be kind; don't rescrape unless necessary

player_shooting_stats_1516 <- k %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_shooting') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types

##### Playing Time Stats 

### Players

url5 <- paste0("https://fbref.com/en/comps/37/",id,"/playingtime/",season,"-Belgian-First-Division-Stats")

a <- url5 %>% read_html()    # be kind; don't rescrape unless necessary

player_pt_stats_1516 <- a %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_playing_time') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types

##### Playing Misc 

### Players

url6 <- paste0("https://fbref.com/en/comps/37/",id,"/misc/",season,"-Belgian-First-Division-Stats")

b <- url6 %>% read_html()    # be kind; don't rescrape unless necessary

player_misc_stats_1516 <- b %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_misc') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types

### Fixtures

url1 <- paste0("https://fbref.com/en/comps/37/1455/schedule/2015-2016-Belgian-Pro-League-Scores-and-Fixtures")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

fixtures_1516 <- data.frame(html_table(tables1[1]))

######################## 2016-2017 #####################################

season <- c("2016-2017")
id <- c("1514")

##### League Table 

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

league_table_overall_1617 <- data.frame(html_table(tables1[1]))
league_table_home_away_1617 <- data.frame(html_table(tables1[2]))

##### Standard Stats 

### Players

url2 <- paste0("https://fbref.com/en/comps/37/",id,"/stats/",season,"-Belgian-First-Division-Stats")

h <- url2 %>% read_html()    # be kind; don't rescrape unless necessary

player_standard_stats_1617 <- h %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_standard') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types

##### Goalkeeping Stats 

### Players

url3 <- paste0("https://fbref.com/en/comps/37/",id,"/keepers/",season,"-Belgian-First-Division-Stats")

j <- url3 %>% read_html()    # be kind; don't rescrape unless necessary

player_goalkeep_stats_1617 <- j %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_keeper') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types

##### Shooting Stats 

### Players

url4 <- paste0("https://fbref.com/en/comps/37/",id,"/shooting/",season,"-Belgian-First-Division-Stats")

k <- url4 %>% read_html()    # be kind; don't rescrape unless necessary

player_shooting_stats_1617 <- k %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_shooting') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types

##### Playing Time Stats 

### Players

url5 <- paste0("https://fbref.com/en/comps/37/",id,"/playingtime/",season,"-Belgian-First-Division-Stats")

a <- url5 %>% read_html()    # be kind; don't rescrape unless necessary

player_pt_stats_1617 <- a %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_playing_time') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types

##### Playing Misc 

### Players

url6 <- paste0("https://fbref.com/en/comps/37/",id,"/misc/",season,"-Belgian-First-Division-Stats")

b <- url6 %>% read_html()    # be kind; don't rescrape unless necessary

player_misc_stats_1617 <- b %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_misc') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types

### Fixtures

url1 <- paste0("https://fbref.com/en/comps/37/1514/schedule/2016-2017-Belgian-First-Division-A-Scores-and-Fixtures")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

fixtures_1617 <- data.frame(html_table(tables1[1]))

######################## 2017-2018 #####################################

season <- c("2017-2018")
id <- c("1619")

##### League Table 

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

league_table_overall_1718 <- data.frame(html_table(tables1[1]))
league_table_home_away_1718 <- data.frame(html_table(tables1[2]))

##### Standard Stats 

### Players

url2 <- paste0("https://fbref.com/en/comps/37/",id,"/stats/",season,"-Belgian-First-Division-Stats")

h <- url2 %>% read_html()    # be kind; don't rescrape unless necessary

player_standard_stats_1718 <- h %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_standard') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types

##### Goalkeeping Stats 

### Players

url3 <- paste0("https://fbref.com/en/comps/37/",id,"/keepers/",season,"-Belgian-First-Division-Stats")

j <- url3 %>% read_html()    # be kind; don't rescrape unless necessary

player_goalkeep_stats_1718 <- j %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_keeper') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types

##### Shooting Stats 

### Players

url4 <- paste0("https://fbref.com/en/comps/37/",id,"/shooting/",season,"-Belgian-First-Division-Stats")

k <- url4 %>% read_html()    # be kind; don't rescrape unless necessary

player_shooting_stats_1718 <- k %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_shooting') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types

##### Playing Time Stats 

### Players

url5 <- paste0("https://fbref.com/en/comps/37/",id,"/playingtime/",season,"-Belgian-First-Division-Stats")

a <- url5 %>% read_html()    # be kind; don't rescrape unless necessary

player_pt_stats_1718 <- a %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_playing_time') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types

##### Playing Misc 

### Players

url6 <- paste0("https://fbref.com/en/comps/37/",id,"/misc/",season,"-Belgian-First-Division-Stats")

b <- url6 %>% read_html()    # be kind; don't rescrape unless necessary

player_misc_stats_1718 <- b %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_misc') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types

### Fixtures

url1 <- paste0("https://fbref.com/en/comps/37/1619/schedule/2017-2018-Belgian-First-Division-A-Scores-and-Fixtures")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

fixtures_1718 <- data.frame(html_table(tables1[1]))

######################## 2018-2019 #####################################

season <- c("2018-2019")
id <- c("2246")

##### League Table 

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

league_table_overall_1819 <- data.frame(html_table(tables1[1]))
league_table_home_away_1819 <- data.frame(html_table(tables1[2]))

##### Standard Stats 

### Players

url2 <- paste0("https://fbref.com/en/comps/37/",id,"/stats/",season,"-Belgian-First-Division-Stats")

h <- url2 %>% read_html()    # be kind; don't rescrape unless necessary

player_standard_stats_1819 <- h %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_standard') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types

##### Goalkeeping Stats 

### Players

url3 <- paste0("https://fbref.com/en/comps/37/",id,"/keepers/",season,"-Belgian-First-Division-Stats")

j <- url3 %>% read_html()    # be kind; don't rescrape unless necessary

player_goalkeep_stats_1819 <- j %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_keeper') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types

##### Shooting Stats 

### Players

url4 <- paste0("https://fbref.com/en/comps/37/",id,"/shooting/",season,"-Belgian-First-Division-Stats")

k <- url4 %>% read_html()    # be kind; don't rescrape unless necessary

player_shooting_stats_1819 <- k %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_shooting') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types

##### Playing Time Stats 

### Players

url5 <- paste0("https://fbref.com/en/comps/37/",id,"/playingtime/",season,"-Belgian-First-Division-Stats")

a <- url5 %>% read_html()    # be kind; don't rescrape unless necessary

player_pt_stats_1819 <- a %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_playing_time') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types

##### Playing Misc 

### Players

url6 <- paste0("https://fbref.com/en/comps/37/",id,"/misc/",season,"-Belgian-First-Division-Stats")

b <- url6 %>% read_html()    # be kind; don't rescrape unless necessary

player_misc_stats_1819 <- b %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_misc') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types

### Fixtures

url1 <- paste0("https://fbref.com/en/comps/37/2246/schedule/2018-2019-Belgian-First-Division-A-Scores-and-Fixtures")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

fixtures_1819 <- data.frame(html_table(tables1[1]))

######################## 2019-2020 #####################################

season <- c("2019-2020")
id <- c("3216")

##### League Table 

url1 <- paste0("https://fbref.com/en/comps/37/",id,"/",season,"-Belgian-First-Division-Stats")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

league_table_overall_1920 <- data.frame(html_table(tables1[1]))
league_table_home_away_1920 <- data.frame(html_table(tables1[2]))

##### Standard Stats 

### Players

url2 <- paste0("https://fbref.com/en/comps/37/",id,"/stats/",season,"-Belgian-First-Division-Stats")

h <- url2 %>% read_html()    # be kind; don't rescrape unless necessary

player_standard_stats_1920 <- h %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_standard') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types

##### Goalkeeping Stats 

### Players

url3 <- paste0("https://fbref.com/en/comps/37/",id,"/keepers/",season,"-Belgian-First-Division-Stats")

j <- url3 %>% read_html()    # be kind; don't rescrape unless necessary

player_goalkeep_stats_1920 <- j %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_keeper') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types

##### Shooting Stats 

### Players

url4 <- paste0("https://fbref.com/en/comps/37/",id,"/shooting/",season,"-Belgian-First-Division-Stats")

k <- url4 %>% read_html()    # be kind; don't rescrape unless necessary

player_shooting_stats_1920 <- k %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_shooting') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types

##### Playing Time Stats 

### Players

url5 <- paste0("https://fbref.com/en/comps/37/",id,"/playingtime/",season,"-Belgian-First-Division-Stats")

a <- url5 %>% read_html()    # be kind; don't rescrape unless necessary

player_pt_stats_1920 <- a %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_playing_time') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types

##### Playing Misc 

### Players

url6 <- paste0("https://fbref.com/en/comps/37/",id,"/misc/",season,"-Belgian-First-Division-Stats")

b <- url6 %>% read_html()    # be kind; don't rescrape unless necessary

player_misc_stats_1920 <- b %>% html_nodes(xpath = '//comment()') %>%    # select comments
  html_text() %>%    # extract comment text
  paste(collapse = '') %>%    # collapse to single string
  read_html() %>%    # reread as HTML
  html_node('table#stats_misc') %>%    # select desired node
  html_table() %>%    # parse node to table
  { setNames(.[-1, ], paste0(names(.), .[1, ])) } %>%    # extract names from first row
  type_convert()    # fix column types

### Fixtures

url1 <- paste0("https://fbref.com/en/comps/37/3216/schedule/2019-2020-Belgian-First-Division-A-Scores-and-Fixtures")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")
head(tables1)

fixtures_1920 <- data.frame(html_table(tables1[1]))

######################## Save Datasets #########################

setwd("C:/Users/chris/Desktop/Soccer/Belgium/Juniper/Fbref_Data")

write.csv(league_table_overall_0708,"league_table_overall_0708.csv")
write.csv(league_table_overall_0809,"league_table_overall_0809.csv")
write.csv(league_table_overall_0910,"league_table_overall_0910.csv")
write.csv(league_table_overall_1011,"league_table_overall_1011.csv")
write.csv(league_table_overall_1112,"league_table_overall_1112.csv")
write.csv(league_table_overall_1213,"league_table_overall_1213.csv")
write.csv(league_table_overall_1314,"league_table_overall_1314.csv")
write.csv(league_table_overall_1415,"league_table_overall_1415.csv")
write.csv(league_table_overall_1516,"league_table_overall_1516.csv")
write.csv(league_table_overall_1617,"league_table_overall_1617.csv")
write.csv(league_table_overall_1718,"league_table_overall_1718.csv")
write.csv(league_table_overall_1819,"league_table_overall_1819.csv")
write.csv(league_table_overall_1920,"league_table_overall_1920.csv")

write.csv(league_table_home_away_0708,"league_table_home_away_0708.csv")
write.csv(league_table_home_away_0809,"league_table_home_away_0809.csv")
write.csv(league_table_home_away_0910,"league_table_home_away_0910.csv")
write.csv(league_table_home_away_1011,"league_table_home_away_1011.csv")
write.csv(league_table_home_away_1112,"league_table_home_away_1112.csv")
write.csv(league_table_home_away_1213,"league_table_home_away_1213.csv")
write.csv(league_table_home_away_1314,"league_table_home_away_1314.csv")
write.csv(league_table_home_away_1415,"league_table_home_away_1415.csv")
write.csv(league_table_home_away_1516,"league_table_home_away_1516.csv")
write.csv(league_table_home_away_1617,"league_table_home_away_1617.csv")
write.csv(league_table_home_away_1718,"league_table_home_away_1718.csv")
write.csv(league_table_home_away_1819,"league_table_home_away_1819.csv")
write.csv(league_table_home_away_1920,"league_table_home_away_1920.csv")

write.csv(player_standard_stats_0708,"player_standard_stats_0708.csv")
write.csv(player_standard_stats_0809,"player_standard_stats_0809.csv")
write.csv(player_standard_stats_0910,"player_standard_stats_0910.csv")
write.csv(player_standard_stats_1011,"player_standard_stats_1011.csv")
write.csv(player_standard_stats_1112,"player_standard_stats_1112.csv")
write.csv(player_standard_stats_1213,"player_standard_stats_1213.csv")
write.csv(player_standard_stats_1314,"player_standard_stats_1314.csv")
write.csv(player_standard_stats_1415,"player_standard_stats_1415.csv")
write.csv(player_standard_stats_1516,"player_standard_stats_1516.csv")
write.csv(player_standard_stats_1617,"player_standard_stats_1617.csv")
write.csv(player_standard_stats_1718,"player_standard_stats_1718.csv")
write.csv(player_standard_stats_1819,"player_standard_stats_1819.csv")
write.csv(player_standard_stats_1920,"player_standard_stats_1920.csv")

write.csv(player_goalkeep_stats_0708,"player_goalkeep_stats_0708.csv")
write.csv(player_goalkeep_stats_0809,"player_goalkeep_stats_0809.csv")
write.csv(player_goalkeep_stats_0910,"player_goalkeep_stats_0910.csv")
write.csv(player_goalkeep_stats_1011,"player_goalkeep_stats_1011.csv")
write.csv(player_goalkeep_stats_1112,"player_goalkeep_stats_1112.csv")
write.csv(player_goalkeep_stats_1213,"player_goalkeep_stats_1213.csv")
write.csv(player_goalkeep_stats_1314,"player_goalkeep_stats_1314.csv")
write.csv(player_goalkeep_stats_1415,"player_goalkeep_stats_1415.csv")
write.csv(player_goalkeep_stats_1516,"player_goalkeep_stats_1516.csv")
write.csv(player_goalkeep_stats_1617,"player_goalkeep_stats_1617.csv")
write.csv(player_goalkeep_stats_1718,"player_goalkeep_stats_1718.csv")
write.csv(player_goalkeep_stats_1819,"player_goalkeep_stats_1819.csv")
write.csv(player_goalkeep_stats_1920,"player_goalkeep_stats_1920.csv")

write.csv(player_shooting_stats_0708,"player_shooting_stats_0708.csv")
write.csv(player_shooting_stats_0809,"player_shooting_stats_0809.csv")
write.csv(player_shooting_stats_0910,"player_shooting_stats_0910.csv")
write.csv(player_shooting_stats_1011,"player_shooting_stats_1011.csv")
write.csv(player_shooting_stats_1112,"player_shooting_stats_1112.csv")
write.csv(player_shooting_stats_1213,"player_shooting_stats_1213.csv")
write.csv(player_shooting_stats_1314,"player_shooting_stats_1314.csv")
write.csv(player_shooting_stats_1415,"player_shooting_stats_1415.csv")
write.csv(player_shooting_stats_1516,"player_shooting_stats_1516.csv")
write.csv(player_shooting_stats_1617,"player_shooting_stats_1617.csv")
write.csv(player_shooting_stats_1718,"player_shooting_stats_1718.csv")
write.csv(player_shooting_stats_1819,"player_shooting_stats_1819.csv")
write.csv(player_shooting_stats_1920,"player_shooting_stats_1920.csv")

write.csv(player_pt_stats_0708,"player_pt_stats_0708.csv")
write.csv(player_pt_stats_0809,"player_pt_stats_0809.csv")
write.csv(player_pt_stats_0910,"player_pt_stats_0910.csv")
write.csv(player_pt_stats_1011,"player_pt_stats_1011.csv")
write.csv(player_pt_stats_1112,"player_pt_stats_1112.csv")
write.csv(player_pt_stats_1213,"player_pt_stats_1213.csv")
write.csv(player_pt_stats_1314,"player_pt_stats_1314.csv")
write.csv(player_pt_stats_1415,"player_pt_stats_1415.csv")
write.csv(player_pt_stats_1516,"player_pt_stats_1516.csv")
write.csv(player_pt_stats_1617,"player_pt_stats_1617.csv")
write.csv(player_pt_stats_1718,"player_pt_stats_1718.csv")
write.csv(player_pt_stats_1819,"player_pt_stats_1819.csv")
write.csv(player_pt_stats_1920,"player_pt_stats_1920.csv")

write.csv(player_misc_stats_0708,"player_misc_stats_0708.csv")
write.csv(player_misc_stats_0809,"player_misc_stats_0809.csv")
write.csv(player_misc_stats_0910,"player_misc_stats_0910.csv")
write.csv(player_misc_stats_1011,"player_misc_stats_1011.csv")
write.csv(player_misc_stats_1112,"player_misc_stats_1112.csv")
write.csv(player_misc_stats_1213,"player_misc_stats_1213.csv")
write.csv(player_misc_stats_1314,"player_misc_stats_1314.csv")
write.csv(player_misc_stats_1415,"player_misc_stats_1415.csv")
write.csv(player_misc_stats_1516,"player_misc_stats_1516.csv")
write.csv(player_misc_stats_1617,"player_misc_stats_1617.csv")
write.csv(player_misc_stats_1718,"player_misc_stats_1718.csv")
write.csv(player_misc_stats_1819,"player_misc_stats_1819.csv")
write.csv(player_misc_stats_1920,"player_misc_stats_1920.csv")

write.csv(fixtures_1415,"fixtures_1415.csv")
write.csv(fixtures_1516,"fixtures_1516.csv")
write.csv(fixtures_1617,"fixtures_1617.csv")
write.csv(fixtures_1718,"fixtures_1718.csv")
write.csv(fixtures_1819,"fixtures_1819.csv")
write.csv(fixtures_1920,"fixtures_1920.csv")


