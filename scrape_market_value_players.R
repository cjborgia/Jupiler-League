library(rvest)
library(dplyr)
library(polite)

setwd("C:/Users/chris/Desktop/Soccer/Belgium/Juniper/Market_Values")

##### 2019-20 #####
url <- "https://www.transfermarkt.us/jupiler-pro-league/startseite/wettbewerb/BE1/plus/?saison_id=2019"

ws <- read_html(url)

urls <- ws %>% html_nodes(".hide-for-pad .vereinprofil_tooltip") %>% html_attr("href") %>% as.character()

print(urls)

urls <- paste0("http://www.transfermarkt.us",urls)

print(urls)

##### Get End of Season Market Values
test1 <- data.frame(mv=character(),age=character())

for (i in urls) {
  ws1 <- read_html(i)
  mv <- ws1 %>% html_nodes(".rechts.hauptlink") %>% html_text() %>% as.character()
  age <- ws1 %>% html_nodes(".posrela+ .zentriert") %>% html_text() %>% as.character()
  temp <- data.frame(mv,age)
  test1 <- rbind(test1,temp)
  cat("*")
}

catcher1 <- data.frame(Player=character(), p_url=character())

for (i in urls) {
  ws1 <- read_html(i)
  player <- ws1 %>% html_nodes("#yw1 .spielprofil_tooltip") %>% html_text() %>% as.character()
  p_url <- ws1 %>% html_nodes("#yw1 .spielprofil_tooltip") %>% html_attr("href") %>% as.character()
  temp <- data.frame(player, p_url)
  catcher1 <- rbind(catcher1,temp)
  cat("*")
}

no.of.rows <- nrow(catcher1)
odd_indexes<-seq(1,no.of.rows,2)
catcher1 <- data.frame(catcher1[odd_indexes,])
catcher1$p_url <- paste0("http://www.transfermarkt.us",catcher1$p_url)

end_of_season_mv <- cbind(catcher1,test1)

write.csv(end_of_season_mv,"end_of_season_mv_1920.csv")

##### Get Transfer Market Value Histories

Catcher4 <- data.frame(Player=character(),Date=character(), Left=character(), Joined=character(), Market_Value=character())

for (i in catcher1$p_url) {
  
  WS2 <- read_html(i)
  Market_Value <- WS2 %>% html_nodes(".zeile-transfer .zelle-mw") %>% html_text() %>% as.character()
  Date <- WS2 %>% html_nodes(".zeile-transfer .zentriert+ .zentriert") %>% html_text() %>% as.character()
  Left <- WS2 %>% html_nodes(".vereinsname:nth-child(5)") %>% html_text() %>% as.character()
  Joined <- WS2 %>% html_nodes(".vereinsname:nth-child(8)") %>% html_text() %>% as.character()
  Player <- WS2 %>% html_nodes("h1") %>% html_text() %>% as.character()
  if (length(Market_Value) > 0) {
    
    temp2 <- data.frame(Player,Date,Left, Joined, Market_Value)
    Catcher4 <- rbind(Catcher4,temp2)
    
  } else {}
  cat("*")
  
}

 write.csv(Catcher4,"player_transfers_1920.csv")

##### 2018-19 #####
url <- "https://www.transfermarkt.us/jupiler-pro-league/startseite/wettbewerb/BE1/plus/?saison_id=2018"

ws <- read_html(url)

urls <- ws %>% html_nodes(".hide-for-pad .vereinprofil_tooltip") %>% html_attr("href") %>% as.character()

print(urls)

urls <- paste0("http://www.transfermarkt.us",urls)

print(urls)

##### Get End of Season Market Values
test1 <- data.frame(mv=character(),age=character())

for (i in urls) {
  ws1 <- read_html(i)
  mv <- ws1 %>% html_nodes(".rechts.hauptlink") %>% html_text() %>% as.character()
  age <- ws1 %>% html_nodes(".posrela+ .zentriert") %>% html_text() %>% as.character()
  temp <- data.frame(mv,age)
  test1 <- rbind(test1,temp)
  cat("*")
}

catcher1 <- data.frame(Player=character(), p_url=character())

for (i in urls) {
  ws1 <- read_html(i)
  player <- ws1 %>% html_nodes("#yw1 .spielprofil_tooltip") %>% html_text() %>% as.character()
  p_url <- ws1 %>% html_nodes("#yw1 .spielprofil_tooltip") %>% html_attr("href") %>% as.character()
  temp <- data.frame(player, p_url)
  catcher1 <- rbind(catcher1,temp)
  cat("*")
}

no.of.rows <- nrow(catcher1)
odd_indexes<-seq(1,no.of.rows,2)
catcher1 <- data.frame(catcher1[odd_indexes,])
catcher1$p_url <- paste0("http://www.transfermarkt.us",catcher1$p_url)

end_of_season_mv <- cbind(catcher1,test1)

write.csv(end_of_season_mv,"end_of_season_mv_1819.csv")

##### Get Transfer Market Value Histories


Catcher4 <- data.frame(Player=character(),Date=character(), Left=character(), Joined=character(), Market_Value=character())

for (i in catcher1$p_url) {
  
  WS2 <- read_html(i)
  Market_Value <- WS2 %>% html_nodes(".zeile-transfer .zelle-mw") %>% html_text() %>% as.character()
  Date <- WS2 %>% html_nodes(".zeile-transfer .zentriert+ .zentriert") %>% html_text() %>% as.character()
  Left <- WS2 %>% html_nodes(".vereinsname:nth-child(5)") %>% html_text() %>% as.character()
  Joined <- WS2 %>% html_nodes(".vereinsname:nth-child(8)") %>% html_text() %>% as.character()
  Player <- WS2 %>% html_nodes("h1") %>% html_text() %>% as.character()
  if (length(Market_Value) > 0) {
    
    temp2 <- data.frame(Player,Date,Left, Joined, Market_Value)
    Catcher4 <- rbind(Catcher4,temp2)
    
  } else {}
  cat("*")
  
}

write.csv(Catcher4,"player_transfers_1819.csv")

##### 2017-18 #####
url <- "https://www.transfermarkt.us/jupiler-pro-league/startseite/wettbewerb/BE1/plus/?saison_id=2017"

ws <- read_html(url)

urls <- ws %>% html_nodes(".hide-for-pad .vereinprofil_tooltip") %>% html_attr("href") %>% as.character()

print(urls)

urls <- paste0("http://www.transfermarkt.us",urls)

print(urls)

##### Get End of Season Market Values
test1 <- data.frame(mv=character(),age=character())

for (i in urls) {
  ws1 <- read_html(i)
  mv <- ws1 %>% html_nodes(".rechts.hauptlink") %>% html_text() %>% as.character()
  age <- ws1 %>% html_nodes(".posrela+ .zentriert") %>% html_text() %>% as.character()
  temp <- data.frame(mv,age)
  test1 <- rbind(test1,temp)
  cat("*")
}

catcher1 <- data.frame(Player=character(), p_url=character())

for (i in urls) {
  ws1 <- read_html(i)
  player <- ws1 %>% html_nodes("#yw1 .spielprofil_tooltip") %>% html_text() %>% as.character()
  p_url <- ws1 %>% html_nodes("#yw1 .spielprofil_tooltip") %>% html_attr("href") %>% as.character()
  temp <- data.frame(player, p_url)
  catcher1 <- rbind(catcher1,temp)
  cat("*")
}

no.of.rows <- nrow(catcher1)
odd_indexes<-seq(1,no.of.rows,2)
catcher1 <- data.frame(catcher1[odd_indexes,])
catcher1$p_url <- paste0("http://www.transfermarkt.us",catcher1$p_url)

end_of_season_mv <- cbind(catcher1,test1)

write.csv(end_of_season_mv,"end_of_season_mv_1718.csv")

##### Get Transfer Market Value Histories
Catcher4 <- data.frame(Player=character(),Date=character(), Left=character(), Joined=character(), Market_Value=character())

for (i in catcher1$p_url) {
  
  WS2 <- read_html(i)
  Market_Value <- WS2 %>% html_nodes(".zeile-transfer .zelle-mw") %>% html_text() %>% as.character()
  Date <- WS2 %>% html_nodes(".zeile-transfer .zentriert+ .zentriert") %>% html_text() %>% as.character()
  Left <- WS2 %>% html_nodes(".vereinsname:nth-child(5)") %>% html_text() %>% as.character()
  Joined <- WS2 %>% html_nodes(".vereinsname:nth-child(8)") %>% html_text() %>% as.character()
  Player <- WS2 %>% html_nodes("h1") %>% html_text() %>% as.character()
  if (length(Market_Value) > 0) {
    
    temp2 <- data.frame(Player,Date,Left, Joined, Market_Value)
    Catcher4 <- rbind(Catcher4,temp2)
    
  } else {}
  cat("*")
  
}


write.csv(Catcher4,"player_transfers_1718.csv")
##### 2016-17 #####
url <- "https://www.transfermarkt.us/jupiler-pro-league/startseite/wettbewerb/BE1/plus/?saison_id=2016"

ws <- read_html(url)

urls <- ws %>% html_nodes(".hide-for-pad .vereinprofil_tooltip") %>% html_attr("href") %>% as.character()

print(urls)

urls <- paste0("http://www.transfermarkt.us",urls)

print(urls)

##### Get End of Season Market Values
test1 <- data.frame(mv=character(),age=character())

for (i in urls) {
  ws1 <- read_html(i)
  mv <- ws1 %>% html_nodes(".rechts.hauptlink") %>% html_text() %>% as.character()
  age <- ws1 %>% html_nodes(".posrela+ .zentriert") %>% html_text() %>% as.character()
  temp <- data.frame(mv,age)
  test1 <- rbind(test1,temp)
  cat("*")
}

catcher1 <- data.frame(Player=character(), p_url=character())

for (i in urls) {
  ws1 <- read_html(i)
  player <- ws1 %>% html_nodes("#yw1 .spielprofil_tooltip") %>% html_text() %>% as.character()
  p_url <- ws1 %>% html_nodes("#yw1 .spielprofil_tooltip") %>% html_attr("href") %>% as.character()
  temp <- data.frame(player, p_url)
  catcher1 <- rbind(catcher1,temp)
  cat("*")
}

no.of.rows <- nrow(catcher1)
odd_indexes<-seq(1,no.of.rows,2)
catcher1 <- data.frame(catcher1[odd_indexes,])
catcher1$p_url <- paste0("http://www.transfermarkt.us",catcher1$p_url)

end_of_season_mv <- cbind(catcher1,test1)

write.csv(end_of_season_mv,"end_of_season_mv_1617.csv")

##### Get Transfer Market Value Histories


Catcher4 <- data.frame(Player=character(),Date=character(), Left=character(), Joined=character(), Market_Value=character())

for (i in catcher1$p_url) {
  
  WS2 <- read_html(i)
  Market_Value <- WS2 %>% html_nodes(".zeile-transfer .zelle-mw") %>% html_text() %>% as.character()
  Date <- WS2 %>% html_nodes(".zeile-transfer .zentriert+ .zentriert") %>% html_text() %>% as.character()
  Left <- WS2 %>% html_nodes(".vereinsname:nth-child(5)") %>% html_text() %>% as.character()
  Joined <- WS2 %>% html_nodes(".vereinsname:nth-child(8)") %>% html_text() %>% as.character()
  Player <- WS2 %>% html_nodes("h1") %>% html_text() %>% as.character()
  if (length(Market_Value) > 0) {
    
    temp2 <- data.frame(Player,Date,Left, Joined, Market_Value)
    Catcher4 <- rbind(Catcher4,temp2)
    
  } else {}
  cat("*")
  
}

write.csv(Catcher4,"player_transfers_1617.csv")
##### 2015-16 #####
url <- "https://www.transfermarkt.us/jupiler-pro-league/startseite/wettbewerb/BE1/plus/?saison_id=2015"

ws <- read_html(url)

urls <- ws %>% html_nodes(".hide-for-pad .vereinprofil_tooltip") %>% html_attr("href") %>% as.character()

print(urls)

urls <- paste0("http://www.transfermarkt.us",urls)

print(urls)

##### Get End of Season Market Values
test1 <- data.frame(mv=character(),age=character())

for (i in urls) {
  ws1 <- read_html(i)
  mv <- ws1 %>% html_nodes(".rechts.hauptlink") %>% html_text() %>% as.character()
  age <- ws1 %>% html_nodes(".posrela+ .zentriert") %>% html_text() %>% as.character()
  temp <- data.frame(mv,age)
  test1 <- rbind(test1,temp)
  cat("*")
}

catcher1 <- data.frame(Player=character(), p_url=character())

for (i in urls) {
  ws1 <- read_html(i)
  player <- ws1 %>% html_nodes("#yw1 .spielprofil_tooltip") %>% html_text() %>% as.character()
  p_url <- ws1 %>% html_nodes("#yw1 .spielprofil_tooltip") %>% html_attr("href") %>% as.character()
  temp <- data.frame(player, p_url)
  catcher1 <- rbind(catcher1,temp)
  cat("*")
}

no.of.rows <- nrow(catcher1)
odd_indexes<-seq(1,no.of.rows,2)
catcher1 <- data.frame(catcher1[odd_indexes,])
catcher1$p_url <- paste0("http://www.transfermarkt.us",catcher1$p_url)

end_of_season_mv <- cbind(catcher1,test1)


write.csv(end_of_season_mv,"end_of_season_mv_1516.csv")

##### Get Transfer Market Value Histories


Catcher4 <- data.frame(Player=character(),Date=character(), Left=character(), Joined=character(), Market_Value=character())

for (i in catcher1$p_url) {
  
  WS2 <- read_html(i)
  Market_Value <- WS2 %>% html_nodes(".zeile-transfer .zelle-mw") %>% html_text() %>% as.character()
  Date <- WS2 %>% html_nodes(".zeile-transfer .zentriert+ .zentriert") %>% html_text() %>% as.character()
  Left <- WS2 %>% html_nodes(".vereinsname:nth-child(5)") %>% html_text() %>% as.character()
  Joined <- WS2 %>% html_nodes(".vereinsname:nth-child(8)") %>% html_text() %>% as.character()
  Player <- WS2 %>% html_nodes("h1") %>% html_text() %>% as.character()
  if (length(Market_Value) > 0) {
    
    temp2 <- data.frame(Player,Date,Left, Joined, Market_Value)
    Catcher4 <- rbind(Catcher4,temp2)
    
  } else {}
  cat("*")
  
}

write.csv(Catcher4,"player_transfers_1516.csv")

##### 2014-15 #####
url <- "https://www.transfermarkt.us/jupiler-pro-league/startseite/wettbewerb/BE1/plus/?saison_id=2014"

ws <- read_html(url)

urls <- ws %>% html_nodes(".hide-for-pad .vereinprofil_tooltip") %>% html_attr("href") %>% as.character()

print(urls)

urls <- paste0("http://www.transfermarkt.us",urls)

print(urls)

##### Get End of Season Market Values
test1 <- data.frame(mv=character(),age=character())

for (i in urls) {
  ws1 <- read_html(i)
  mv <- ws1 %>% html_nodes(".rechts.hauptlink") %>% html_text() %>% as.character()
  age <- ws1 %>% html_nodes(".posrela+ .zentriert") %>% html_text() %>% as.character()
  temp <- data.frame(mv,age)
  test1 <- rbind(test1,temp)
  cat("*")
}

catcher1 <- data.frame(Player=character(), p_url=character())

for (i in urls) {
  ws1 <- read_html(i)
  player <- ws1 %>% html_nodes("#yw1 .spielprofil_tooltip") %>% html_text() %>% as.character()
  p_url <- ws1 %>% html_nodes("#yw1 .spielprofil_tooltip") %>% html_attr("href") %>% as.character()
  temp <- data.frame(player, p_url)
  catcher1 <- rbind(catcher1,temp)
  cat("*")
}

no.of.rows <- nrow(catcher1)
odd_indexes<-seq(1,no.of.rows,2)
catcher1 <- data.frame(catcher1[odd_indexes,])
catcher1$p_url <- paste0("http://www.transfermarkt.us",catcher1$p_url)

end_of_season_mv <- cbind(catcher1,test1)


write.csv(end_of_season_mv,"end_of_season_mv_1415.csv")

##### Get Transfer Market Value Histories


Catcher4 <- data.frame(Player=character(),Date=character(), Left=character(), Joined=character(), Market_Value=character())

for (i in catcher1$p_url) {
  
  WS2 <- read_html(i)
  Market_Value <- WS2 %>% html_nodes(".zeile-transfer .zelle-mw") %>% html_text() %>% as.character()
  Date <- WS2 %>% html_nodes(".zeile-transfer .zentriert+ .zentriert") %>% html_text() %>% as.character()
  Left <- WS2 %>% html_nodes(".vereinsname:nth-child(5)") %>% html_text() %>% as.character()
  Joined <- WS2 %>% html_nodes(".vereinsname:nth-child(8)") %>% html_text() %>% as.character()
  Player <- WS2 %>% html_nodes("h1") %>% html_text() %>% as.character()
  if (length(Market_Value) > 0) {
    
    temp2 <- data.frame(Player,Date,Left, Joined, Market_Value)
    Catcher4 <- rbind(Catcher4,temp2)
    
  } else {}
  cat("*")
  
}

write.csv(Catcher4,"player_transfers_1415.csv")
##### 2013-14 #####
url <- "https://www.transfermarkt.us/jupiler-pro-league/startseite/wettbewerb/BE1/plus/?saison_id=2013"

ws <- read_html(url)

urls <- ws %>% html_nodes(".hide-for-pad .vereinprofil_tooltip") %>% html_attr("href") %>% as.character()

print(urls)

urls <- paste0("http://www.transfermarkt.us",urls)

print(urls)

##### Get End of Season Market Values
test1 <- data.frame(mv=character(),age=character())

for (i in urls) {
  ws1 <- read_html(i)
  mv <- ws1 %>% html_nodes(".rechts.hauptlink") %>% html_text() %>% as.character()
  age <- ws1 %>% html_nodes(".posrela+ .zentriert") %>% html_text() %>% as.character()
  temp <- data.frame(mv,age)
  test1 <- rbind(test1,temp)
  cat("*")
}

catcher1 <- data.frame(Player=character(), p_url=character())

for (i in urls) {
  ws1 <- read_html(i)
  player <- ws1 %>% html_nodes("#yw1 .spielprofil_tooltip") %>% html_text() %>% as.character()
  p_url <- ws1 %>% html_nodes("#yw1 .spielprofil_tooltip") %>% html_attr("href") %>% as.character()
  temp <- data.frame(player, p_url)
  catcher1 <- rbind(catcher1,temp)
  cat("*")
}

no.of.rows <- nrow(catcher1)
odd_indexes<-seq(1,no.of.rows,2)
catcher1 <- data.frame(catcher1[odd_indexes,])
catcher1$p_url <- paste0("http://www.transfermarkt.us",catcher1$p_url)

end_of_season_mv <- cbind(catcher1,test1)


write.csv(end_of_season_mv,"end_of_season_mv_1314.csv")

##### Get Transfer Market Value Histories


Catcher4 <- data.frame(Player=character(),Date=character(), Left=character(), Joined=character(), Market_Value=character())

for (i in catcher1$p_url) {
  
  WS2 <- read_html(i)
  Market_Value <- WS2 %>% html_nodes(".zeile-transfer .zelle-mw") %>% html_text() %>% as.character()
  Date <- WS2 %>% html_nodes(".zeile-transfer .zentriert+ .zentriert") %>% html_text() %>% as.character()
  Left <- WS2 %>% html_nodes(".vereinsname:nth-child(5)") %>% html_text() %>% as.character()
  Joined <- WS2 %>% html_nodes(".vereinsname:nth-child(8)") %>% html_text() %>% as.character()
  Player <- WS2 %>% html_nodes("h1") %>% html_text() %>% as.character()
  if (length(Market_Value) > 0) {
    
    temp2 <- data.frame(Player,Date,Left, Joined, Market_Value)
    Catcher4 <- rbind(Catcher4,temp2)
    
  } else {}
  cat("*")
  
}

write.csv(Catcher4,"player_transfers_1314.csv")
##### 2012-13 #####
url <- "https://www.transfermarkt.us/jupiler-pro-league/startseite/wettbewerb/BE1/plus/?saison_id=2012"

ws <- read_html(url)

urls <- ws %>% html_nodes(".hide-for-pad .vereinprofil_tooltip") %>% html_attr("href") %>% as.character()

print(urls)

urls <- paste0("http://www.transfermarkt.us",urls)

print(urls)

##### Get End of Season Market Values
test1 <- data.frame(mv=character(),age=character())

for (i in urls) {
  ws1 <- read_html(i)
  mv <- ws1 %>% html_nodes(".rechts.hauptlink") %>% html_text() %>% as.character()
  age <- ws1 %>% html_nodes(".posrela+ .zentriert") %>% html_text() %>% as.character()
  temp <- data.frame(mv,age)
  test1 <- rbind(test1,temp)
  cat("*")
}

catcher1 <- data.frame(Player=character(), p_url=character())

for (i in urls) {
  ws1 <- read_html(i)
  player <- ws1 %>% html_nodes("#yw1 .spielprofil_tooltip") %>% html_text() %>% as.character()
  p_url <- ws1 %>% html_nodes("#yw1 .spielprofil_tooltip") %>% html_attr("href") %>% as.character()
  temp <- data.frame(player, p_url)
  catcher1 <- rbind(catcher1,temp)
  cat("*")
}

no.of.rows <- nrow(catcher1)
odd_indexes<-seq(1,no.of.rows,2)
catcher1 <- data.frame(catcher1[odd_indexes,])
catcher1$p_url <- paste0("http://www.transfermarkt.us",catcher1$p_url)

end_of_season_mv <- cbind(catcher1,test1)


write.csv(end_of_season_mv,"end_of_season_mv_1213.csv")

##### Get Transfer Market Value Histories


Catcher4 <- data.frame(Player=character(),Date=character(), Left=character(), Joined=character(), Market_Value=character())

for (i in catcher1$p_url) {
  
  WS2 <- read_html(i)
  Market_Value <- WS2 %>% html_nodes(".zeile-transfer .zelle-mw") %>% html_text() %>% as.character()
  Date <- WS2 %>% html_nodes(".zeile-transfer .zentriert+ .zentriert") %>% html_text() %>% as.character()
  Left <- WS2 %>% html_nodes(".vereinsname:nth-child(5)") %>% html_text() %>% as.character()
  Joined <- WS2 %>% html_nodes(".vereinsname:nth-child(8)") %>% html_text() %>% as.character()
  Player <- WS2 %>% html_nodes("h1") %>% html_text() %>% as.character()
  if (length(Market_Value) > 0) {
    
    temp2 <- data.frame(Player,Date,Left, Joined, Market_Value)
    Catcher4 <- rbind(Catcher4,temp2)
    
  } else {}
  cat("*")
  
}

write.csv(Catcher4,"player_transfers_1213.csv")
##### 2011-12 #####
url <- "https://www.transfermarkt.us/jupiler-pro-league/startseite/wettbewerb/BE1/plus/?saison_id=2011"

ws <- read_html(url)

urls <- ws %>% html_nodes(".hide-for-pad .vereinprofil_tooltip") %>% html_attr("href") %>% as.character()

print(urls)

urls <- paste0("http://www.transfermarkt.us",urls)

print(urls)

##### Get End of Season Market Values
test1 <- data.frame(mv=character(),age=character())

for (i in urls) {
  ws1 <- read_html(i)
  mv <- ws1 %>% html_nodes(".rechts.hauptlink") %>% html_text() %>% as.character()
  age <- ws1 %>% html_nodes(".posrela+ .zentriert") %>% html_text() %>% as.character()
  temp <- data.frame(mv,age)
  test1 <- rbind(test1,temp)
  cat("*")
}

catcher1 <- data.frame(Player=character(), p_url=character())

for (i in urls) {
  ws1 <- read_html(i)
  player <- ws1 %>% html_nodes("#yw1 .spielprofil_tooltip") %>% html_text() %>% as.character()
  p_url <- ws1 %>% html_nodes("#yw1 .spielprofil_tooltip") %>% html_attr("href") %>% as.character()
  temp <- data.frame(player, p_url)
  catcher1 <- rbind(catcher1,temp)
  cat("*")
}

no.of.rows <- nrow(catcher1)
odd_indexes<-seq(1,no.of.rows,2)
catcher1 <- data.frame(catcher1[odd_indexes,])
catcher1$p_url <- paste0("http://www.transfermarkt.us",catcher1$p_url)

end_of_season_mv <- cbind(catcher1,test1)


write.csv(end_of_season_mv,"end_of_season_mv_1112.csv")

##### Get Transfer Market Value Histories


Catcher4 <- data.frame(Player=character(),Date=character(), Left=character(), Joined=character(), Market_Value=character())

for (i in catcher1$p_url) {
  
  WS2 <- read_html(i)
  Market_Value <- WS2 %>% html_nodes(".zeile-transfer .zelle-mw") %>% html_text() %>% as.character()
  Date <- WS2 %>% html_nodes(".zeile-transfer .zentriert+ .zentriert") %>% html_text() %>% as.character()
  Left <- WS2 %>% html_nodes(".vereinsname:nth-child(5)") %>% html_text() %>% as.character()
  Joined <- WS2 %>% html_nodes(".vereinsname:nth-child(8)") %>% html_text() %>% as.character()
  Player <- WS2 %>% html_nodes("h1") %>% html_text() %>% as.character()
  if (length(Market_Value) > 0) {
    
    temp2 <- data.frame(Player,Date,Left, Joined, Market_Value)
    Catcher4 <- rbind(Catcher4,temp2)
    
  } else {}
  cat("*")
  
}

write.csv(Catcher4,"player_transfers_1112.csv")
##### 2010-11 #####
url <- "https://www.transfermarkt.us/jupiler-pro-league/startseite/wettbewerb/BE1/plus/?saison_id=2010"

ws <- read_html(url)

urls <- ws %>% html_nodes(".hide-for-pad .vereinprofil_tooltip") %>% html_attr("href") %>% as.character()

print(urls)

urls <- paste0("http://www.transfermarkt.us",urls)

print(urls)

##### Get End of Season Market Values
test1 <- data.frame(mv=character(),age=character())

for (i in urls) {
  ws1 <- read_html(i)
  mv <- ws1 %>% html_nodes(".rechts.hauptlink") %>% html_text() %>% as.character()
  age <- ws1 %>% html_nodes(".posrela+ .zentriert") %>% html_text() %>% as.character()
  temp <- data.frame(mv,age)
  test1 <- rbind(test1,temp)
  cat("*")
}

catcher1 <- data.frame(Player=character(), p_url=character())

for (i in urls) {
  ws1 <- read_html(i)
  player <- ws1 %>% html_nodes("#yw1 .spielprofil_tooltip") %>% html_text() %>% as.character()
  p_url <- ws1 %>% html_nodes("#yw1 .spielprofil_tooltip") %>% html_attr("href") %>% as.character()
  temp <- data.frame(player, p_url)
  catcher1 <- rbind(catcher1,temp)
  cat("*")
}

no.of.rows <- nrow(catcher1)
odd_indexes<-seq(1,no.of.rows,2)
catcher1 <- data.frame(catcher1[odd_indexes,])
catcher1$p_url <- paste0("http://www.transfermarkt.us",catcher1$p_url)

end_of_season_mv <- cbind(catcher1,test1)

write.csv(end_of_season_mv,"end_of_season_mv_1011.csv")

##### Get Transfer Market Value Histories


Catcher4 <- data.frame(Player=character(),Date=character(), Left=character(), Joined=character(), Market_Value=character())

for (i in catcher1$p_url) {
  
  WS2 <- read_html(i)
  Market_Value <- WS2 %>% html_nodes(".zeile-transfer .zelle-mw") %>% html_text() %>% as.character()
  Date <- WS2 %>% html_nodes(".zeile-transfer .zentriert+ .zentriert") %>% html_text() %>% as.character()
  Left <- WS2 %>% html_nodes(".vereinsname:nth-child(5)") %>% html_text() %>% as.character()
  Joined <- WS2 %>% html_nodes(".vereinsname:nth-child(8)") %>% html_text() %>% as.character()
  Player <- WS2 %>% html_nodes("h1") %>% html_text() %>% as.character()
  if (length(Market_Value) > 0) {
    
    temp2 <- data.frame(Player,Date,Left, Joined, Market_Value)
    Catcher4 <- rbind(Catcher4,temp2)
    
  } else {}
  cat("*")
  
}



write.csv(Catcher4,"player_transfers_1011.csv")
##### 2009-10 #####
url <- "https://www.transfermarkt.us/jupiler-pro-league/startseite/wettbewerb/BE1/plus/?saison_id=2009"

ws <- read_html(url)

urls <- ws %>% html_nodes(".hide-for-pad .vereinprofil_tooltip") %>% html_attr("href") %>% as.character()

print(urls)

urls <- paste0("http://www.transfermarkt.us",urls)

print(urls)

##### Get End of Season Market Values
test1 <- data.frame(mv=character(),age=character())

for (i in urls) {
  ws1 <- read_html(i)
  mv <- ws1 %>% html_nodes(".rechts.hauptlink") %>% html_text() %>% as.character()
  age <- ws1 %>% html_nodes(".posrela+ .zentriert") %>% html_text() %>% as.character()
  temp <- data.frame(mv,age)
  test1 <- rbind(test1,temp)
  cat("*")
}

catcher1 <- data.frame(Player=character(), p_url=character())

for (i in urls) {
  ws1 <- read_html(i)
  player <- ws1 %>% html_nodes("#yw1 .spielprofil_tooltip") %>% html_text() %>% as.character()
  p_url <- ws1 %>% html_nodes("#yw1 .spielprofil_tooltip") %>% html_attr("href") %>% as.character()
  temp <- data.frame(player, p_url)
  catcher1 <- rbind(catcher1,temp)
  cat("*")
}

no.of.rows <- nrow(catcher1)
odd_indexes<-seq(1,no.of.rows,2)
catcher1 <- data.frame(catcher1[odd_indexes,])
catcher1$p_url <- paste0("http://www.transfermarkt.us",catcher1$p_url)

end_of_season_mv <- cbind(catcher1,test1)


write.csv(end_of_season_mv,"end_of_season_mv_0910.csv")

##### Get Transfer Market Value Histories


Catcher4 <- data.frame(Player=character(),Date=character(), Left=character(), Joined=character(), Market_Value=character())

for (i in catcher1$p_url) {
  
  WS2 <- read_html(i)
  Market_Value <- WS2 %>% html_nodes(".zeile-transfer .zelle-mw") %>% html_text() %>% as.character()
  Date <- WS2 %>% html_nodes(".zeile-transfer .zentriert+ .zentriert") %>% html_text() %>% as.character()
  Left <- WS2 %>% html_nodes(".vereinsname:nth-child(5)") %>% html_text() %>% as.character()
  Joined <- WS2 %>% html_nodes(".vereinsname:nth-child(8)") %>% html_text() %>% as.character()
  Player <- WS2 %>% html_nodes("h1") %>% html_text() %>% as.character()
  if (length(Market_Value) > 0) {
    
    temp2 <- data.frame(Player,Date,Left, Joined, Market_Value)
    Catcher4 <- rbind(Catcher4,temp2)
    
  } else {}
  cat("*")
  
}

write.csv(Catcher4,"player_transfers_0910.csv")
##### 2008-09 #####
url <- "https://www.transfermarkt.us/jupiler-pro-league/startseite/wettbewerb/BE1/plus/?saison_id=2008"

ws <- read_html(url)

urls <- ws %>% html_nodes(".hide-for-pad .vereinprofil_tooltip") %>% html_attr("href") %>% as.character()

print(urls)

urls <- paste0("http://www.transfermarkt.us",urls)

print(urls)

##### Get End of Season Market Values
test1 <- data.frame(mv=character(),age=character())

for (i in urls) {
  ws1 <- read_html(i)
  mv <- ws1 %>% html_nodes(".rechts.hauptlink") %>% html_text() %>% as.character()
  age <- ws1 %>% html_nodes(".posrela+ .zentriert") %>% html_text() %>% as.character()
  temp <- data.frame(mv,age)
  test1 <- rbind(test1,temp)
  cat("*")
}

catcher1 <- data.frame(Player=character(), p_url=character())

for (i in urls) {
  ws1 <- read_html(i)
  player <- ws1 %>% html_nodes("#yw1 .spielprofil_tooltip") %>% html_text() %>% as.character()
  p_url <- ws1 %>% html_nodes("#yw1 .spielprofil_tooltip") %>% html_attr("href") %>% as.character()
  temp <- data.frame(player, p_url)
  catcher1 <- rbind(catcher1,temp)
  cat("*")
}

no.of.rows <- nrow(catcher1)
odd_indexes<-seq(1,no.of.rows,2)
catcher1 <- data.frame(catcher1[odd_indexes,])
catcher1$p_url <- paste0("http://www.transfermarkt.us",catcher1$p_url)

end_of_season_mv <- cbind(catcher1,test1)

write.csv(end_of_season_mv,"end_of_season_mv_0809.csv")

##### Get Transfer Market Value Histories


Catcher4 <- data.frame(Player=character(),Date=character(), Left=character(), Joined=character(), Market_Value=character())

for (i in catcher1$p_url) {
  
  WS2 <- read_html(i)
  Market_Value <- WS2 %>% html_nodes(".zeile-transfer .zelle-mw") %>% html_text() %>% as.character()
  Date <- WS2 %>% html_nodes(".zeile-transfer .zentriert+ .zentriert") %>% html_text() %>% as.character()
  Left <- WS2 %>% html_nodes(".vereinsname:nth-child(5)") %>% html_text() %>% as.character()
  Joined <- WS2 %>% html_nodes(".vereinsname:nth-child(8)") %>% html_text() %>% as.character()
  Player <- WS2 %>% html_nodes("h1") %>% html_text() %>% as.character()
  if (length(Market_Value) > 0) {
    
    temp2 <- data.frame(Player,Date,Left, Joined, Market_Value)
    Catcher4 <- rbind(Catcher4,temp2)
    
  } else {}
  cat("*")
  
}

write.csv(Catcher4,"player_transfers_0809.csv")
##### 2007-08 #####
url <- "https://www.transfermarkt.us/jupiler-pro-league/startseite/wettbewerb/BE1/plus/?saison_id=2007"

ws <- read_html(url)

urls <- ws %>% html_nodes(".hide-for-pad .vereinprofil_tooltip") %>% html_attr("href") %>% as.character()

print(urls)

urls <- paste0("http://www.transfermarkt.us",urls)

print(urls)

##### Get End of Season Market Values
test1 <- data.frame(mv=character(),age=character())

for (i in urls) {
  ws1 <- read_html(i)
  mv <- ws1 %>% html_nodes(".rechts.hauptlink") %>% html_text() %>% as.character()
  age <- ws1 %>% html_nodes(".posrela+ .zentriert") %>% html_text() %>% as.character()
  temp <- data.frame(mv,age)
  test1 <- rbind(test1,temp)
  cat("*")
}

catcher1 <- data.frame(Player=character(), p_url=character())

for (i in urls) {
  ws1 <- read_html(i)
  player <- ws1 %>% html_nodes("#yw1 .spielprofil_tooltip") %>% html_text() %>% as.character()
  p_url <- ws1 %>% html_nodes("#yw1 .spielprofil_tooltip") %>% html_attr("href") %>% as.character()
  temp <- data.frame(player, p_url)
  catcher1 <- rbind(catcher1,temp)
  cat("*")
}

no.of.rows <- nrow(catcher1)
odd_indexes<-seq(1,no.of.rows,2)
catcher1 <- data.frame(catcher1[odd_indexes,])
catcher1$p_url <- paste0("http://www.transfermarkt.us",catcher1$p_url)

end_of_season_mv <- cbind(catcher1,test1)


write.csv(end_of_season_mv,"end_of_season_mv_0708.csv")

##### Get Transfer Market Value Histories


Catcher4 <- data.frame(Player=character(),Date=character(), Left=character(), Joined=character(), Market_Value=character())

for (i in catcher1$p_url) {
  
  WS2 <- read_html(i)
  Market_Value <- WS2 %>% html_nodes(".zeile-transfer .zelle-mw") %>% html_text() %>% as.character()
  Date <- WS2 %>% html_nodes(".zeile-transfer .zentriert+ .zentriert") %>% html_text() %>% as.character()
  Left <- WS2 %>% html_nodes(".vereinsname:nth-child(5)") %>% html_text() %>% as.character()
  Joined <- WS2 %>% html_nodes(".vereinsname:nth-child(8)") %>% html_text() %>% as.character()
  Player <- WS2 %>% html_nodes("h1") %>% html_text() %>% as.character()
  if (length(Market_Value) > 0) {
    
    temp2 <- data.frame(Player,Date,Left, Joined, Market_Value)
    Catcher4 <- rbind(Catcher4,temp2)
    
  } else {}
  cat("*")
  
}

write.csv(Catcher4,"player_transfers_0708.csv")
##### 2006-07 #####
url <- "https://www.transfermarkt.us/jupiler-pro-league/startseite/wettbewerb/BE1/plus/?saison_id=2006"

ws <- read_html(url)

urls <- ws %>% html_nodes(".hide-for-pad .vereinprofil_tooltip") %>% html_attr("href") %>% as.character()

print(urls)

urls <- paste0("http://www.transfermarkt.us",urls)

print(urls)

##### Get End of Season Market Values
test1 <- data.frame(mv=character(),age=character())

for (i in urls) {
  ws1 <- read_html(i)
  mv <- ws1 %>% html_nodes(".rechts.hauptlink") %>% html_text() %>% as.character()
  age <- ws1 %>% html_nodes(".posrela+ .zentriert") %>% html_text() %>% as.character()
  temp <- data.frame(mv,age)
  test1 <- rbind(test1,temp)
  cat("*")
}

catcher1 <- data.frame(Player=character(), p_url=character())

for (i in urls) {
  ws1 <- read_html(i)
  player <- ws1 %>% html_nodes("#yw1 .spielprofil_tooltip") %>% html_text() %>% as.character()
  p_url <- ws1 %>% html_nodes("#yw1 .spielprofil_tooltip") %>% html_attr("href") %>% as.character()
  temp <- data.frame(player, p_url)
  catcher1 <- rbind(catcher1,temp)
  cat("*")
}

no.of.rows <- nrow(catcher1)
odd_indexes<-seq(1,no.of.rows,2)
catcher1 <- data.frame(catcher1[odd_indexes,])
catcher1$p_url <- paste0("http://www.transfermarkt.us",catcher1$p_url)

end_of_season_mv <- cbind(catcher1,test1)


write.csv(end_of_season_mv,"end_of_season_mv_0607.csv")

##### Get Transfer Market Value Histories


Catcher4 <- data.frame(Player=character(),Date=character(), Left=character(), Joined=character(), Market_Value=character())

for (i in catcher1$p_url) {
  
  WS2 <- read_html(i)
  Market_Value <- WS2 %>% html_nodes(".zeile-transfer .zelle-mw") %>% html_text() %>% as.character()
  Date <- WS2 %>% html_nodes(".zeile-transfer .zentriert+ .zentriert") %>% html_text() %>% as.character()
  Left <- WS2 %>% html_nodes(".vereinsname:nth-child(5)") %>% html_text() %>% as.character()
  Joined <- WS2 %>% html_nodes(".vereinsname:nth-child(8)") %>% html_text() %>% as.character()
  Player <- WS2 %>% html_nodes("h1") %>% html_text() %>% as.character()
  if (length(Market_Value) > 0) {
    
    temp2 <- data.frame(Player,Date,Left, Joined, Market_Value)
    Catcher4 <- rbind(Catcher4,temp2)
    
  } else {}
  cat("*")
  
}

write.csv(Catcher4,"player_transfers_0607.csv")
