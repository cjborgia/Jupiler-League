library(readHTMLTable)


##### 1 Club Brugge KV #####

### 19-20
url1 <- paste0("https://www.transfermarkt.us/club-brugge-kv/kader/verein/2282/plus/0/galerie/0?saison_id=2019")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

club_brugge_value_1920 <- data.frame(html_table(tables1[37]))

### 18-19
url1 <- paste0("https://www.transfermarkt.us/club-brugge-kv/kader/verein/2282/plus/0/galerie/0?saison_id=2018")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

club_brugge_value_1819 <- data.frame(html_table(tables1[40]))

### 17-18
url1 <- paste0("https://www.transfermarkt.us/club-brugge-kv/kader/verein/2282/plus/0/galerie/0?saison_id=2017")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

club_brugge_value_1718 <- data.frame(html_table(tables1[39]))

### 16-17
url1 <- paste0("https://www.transfermarkt.us/club-brugge-kv/kader/verein/2282/plus/0/galerie/0?saison_id=2016")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

club_brugge_value_1617 <- data.frame(html_table(tables1[40]))

### 15-16
url1 <- paste0("https://www.transfermarkt.us/club-brugge-kv/kader/verein/2282/plus/0/galerie/0?saison_id=2015")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

club_brugge_value_1516 <- data.frame(html_table(tables1[43]))

### 14-15
url1 <- paste0("https://www.transfermarkt.us/club-brugge-kv/kader/verein/2282/plus/0/galerie/0?saison_id=2014")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

club_brugge_value_1415 <- data.frame(html_table(tables1[40]))

### 13-14
url1 <- paste0("https://www.transfermarkt.us/club-brugge-kv/kader/verein/2282/plus/0/galerie/0?saison_id=2013")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

club_brugge_value_1314 <- data.frame(html_table(tables1[41]))

### 12-13
url1 <- paste0("https://www.transfermarkt.us/club-brugge-kv/kader/verein/2282/plus/0/galerie/0?saison_id=2012")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

club_brugge_value_1213 <- data.frame(html_table(tables1[40]))

### 11-12
url1 <- paste0("https://www.transfermarkt.us/club-brugge-kv/kader/verein/2282/plus/0/galerie/0?saison_id=2011")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

club_brugge_value_1112 <- data.frame(html_table(tables1[38]))

### 10-11
url1 <- paste0("https://www.transfermarkt.us/club-brugge-kv/kader/verein/2282/plus/0/galerie/0?saison_id=2010")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

club_brugge_value_1011 <- data.frame(html_table(tables1[33]))

### 09-10
url1 <- paste0("https://www.transfermarkt.us/club-brugge-kv/kader/verein/2282/plus/0/galerie/0?saison_id=2009")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

club_brugge_value_0910 <- data.frame(html_table(tables1[32]))

### 08-09
url1 <- paste0("https://www.transfermarkt.us/club-brugge-kv/kader/verein/2282/plus/0/galerie/0?saison_id=2008")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

club_brugge_value_0809 <- data.frame(html_table(tables1[33]))

### 07-08
url1 <- paste0("https://www.transfermarkt.us/club-brugge-kv/kader/verein/2282/plus/0/galerie/0?saison_id=2007")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

club_brugge_value_0708 <- data.frame(html_table(tables1[32]))

### 06-07
url1 <- paste0("https://www.transfermarkt.us/club-brugge-kv/kader/verein/2282/plus/0/galerie/0?saison_id=2006")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

club_brugge_value_0607 <- data.frame(html_table(tables1[33]))

##### 2 Gent #####

### 19-20
url1 <- paste0("https://www.transfermarkt.us/kaa-gent/kader/verein/157/plus/0/galerie/0?saison_id=2019")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

gent_value_1920 <- data.frame(html_table(tables1[42]))

### 18-19
url1 <- paste0("https://www.transfermarkt.us/kaa-gent/kader/verein/157/plus/0/galerie/0?saison_id=2018")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

gent_value_1819 <- data.frame(html_table(tables1[46]))

### 17-18
url1 <- paste0("https://www.transfermarkt.us/kaa-gent/kader/verein/157/plus/0/galerie/0?saison_id=2017")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

gent_value_1718 <- data.frame(html_table(tables1[41]))

### 16-17
url1 <- paste0("https://www.transfermarkt.us/kaa-gent/kader/verein/157/plus/0/galerie/0?saison_id=2016")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

gent_value_1617 <- data.frame(html_table(tables1[56]))

### 15-16
url1 <- paste0("https://www.transfermarkt.us/kaa-gent/kader/verein/157/plus/0/galerie/0?saison_id=2015")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

gent_value_1516 <- data.frame(html_table(tables1[37]))

### 14-15
url1 <- paste0("https://www.transfermarkt.us/kaa-gent/kader/verein/157/plus/0/galerie/0?saison_id=2014")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

gent_value_1415 <- data.frame(html_table(tables1[37]))

### 13-14
url1 <- paste0("https://www.transfermarkt.us/kaa-gent/kader/verein/157/plus/0/galerie/0?saison_id=2013")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

gent_value_1314 <- data.frame(html_table(tables1[47]))

### 12-13
url1 <- paste0("https://www.transfermarkt.us/kaa-gent/kader/verein/157/plus/0/galerie/0?saison_id=2012")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

gent_value_1213 <- data.frame(html_table(tables1[42]))

### 11-12
url1 <- paste0("https://www.transfermarkt.us/kaa-gent/kader/verein/157/plus/0/galerie/0?saison_id=2011")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

gent_value_1112 <- data.frame(html_table(tables1[41]))

### 10-11
url1 <- paste0("https://www.transfermarkt.us/kaa-gent/kader/verein/157/plus/0/galerie/0?saison_id=2010")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

gent_value_1011 <- data.frame(html_table(tables1[40]))

### 09-10
url1 <- paste0("https://www.transfermarkt.us/kaa-gent/kader/verein/157/plus/0/galerie/0?saison_id=2009")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

gent_value_0910 <- data.frame(html_table(tables1[33]))

### 08-09
url1 <- paste0("https://www.transfermarkt.us/kaa-gent/kader/verein/157/plus/0/galerie/0?saison_id=2008")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

gent_value_0809 <- data.frame(html_table(tables1[40]))

### 07-08
url1 <- paste0("https://www.transfermarkt.us/kaa-gent/kader/verein/157/plus/0/galerie/0?saison_id=2007")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

gent_value_0708 <- data.frame(html_table(tables1[34]))

### 06-07
url1 <- paste0("https://www.transfermarkt.us/kaa-gent/kader/verein/157/plus/0/galerie/0?saison_id=2006")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

gent_value_0607 <- data.frame(html_table(tables1[33]))
##### 3 Charleroi #####
### 19-20
url1 <- paste0("https://www.transfermarkt.us/rsc-charleroi/kader/verein/172/plus/0/galerie/0?saison_id=2019")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

charleroi_value_1920 <- data.frame(html_table(tables1[34]))

### 18-19
url1 <- paste0("https://www.transfermarkt.us/rsc-charleroi/kader/verein/172/plus/0/galerie/0?saison_id=2018")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

charleroi_value_1819 <- data.frame(html_table(tables1[44]))

### 17-18
url1 <- paste0("https://www.transfermarkt.us/rsc-charleroi/kader/verein/172/plus/0/galerie/0?saison_id=2017")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

charleroi_value_1718 <- data.frame(html_table(tables1[34]))

### 16-17
url1 <- paste0("https://www.transfermarkt.us/rsc-charleroi/kader/verein/172/plus/0/galerie/0?saison_id=2016")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

charleroi_value_1617 <- data.frame(html_table(tables1[38]))

### 15-16
url1 <- paste0("https://www.transfermarkt.us/rsc-charleroi/kader/verein/172/plus/0/galerie/0?saison_id=2015")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

charleroi_value_1516 <- data.frame(html_table(tables1[35]))

### 14-15
url1 <- paste0("https://www.transfermarkt.us/rsc-charleroi/kader/verein/172/plus/0/galerie/0?saison_id=2014")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

charleroi_value_1415 <- data.frame(html_table(tables1[30]))

### 13-14
url1 <- paste0("https://www.transfermarkt.us/rsc-charleroi/kader/verein/172/plus/0/galerie/0?saison_id=2013")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

charleroi_value_1314 <- data.frame(html_table(tables1[36]))

### 12-13
url1 <- paste0("https://www.transfermarkt.us/rsc-charleroi/kader/verein/172/plus/0/galerie/0?saison_id=2012")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

charleroi_value_1213 <- data.frame(html_table(tables1[39]))

### 11-12
url1 <- paste0("https://www.transfermarkt.us/rsc-charleroi/kader/verein/172/plus/0/galerie/0?saison_id=2011")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

charleroi_value_1112 <- data.frame(html_table(tables1[36]))

### 10-11
url1 <- paste0("https://www.transfermarkt.us/rsc-charleroi/kader/verein/172/plus/0/galerie/0?saison_id=2010")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

charleroi_value_1011 <- data.frame(html_table(tables1[55]))

### 09-10
url1 <- paste0("https://www.transfermarkt.us/rsc-charleroi/kader/verein/172/plus/0/galerie/0?saison_id=2009")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

charleroi_value_0910 <- data.frame(html_table(tables1[39]))

### 08-09
url1 <- paste0("https://www.transfermarkt.us/rsc-charleroi/kader/verein/172/plus/0/galerie/0?saison_id=2008")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

charleroi_value_0809 <- data.frame(html_table(tables1[38]))

### 07-08
url1 <- paste0("https://www.transfermarkt.us/rsc-charleroi/kader/verein/172/plus/0/galerie/0?saison_id=2007")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

charleroi_value_0708 <- data.frame(html_table(tables1[34]))

### 06-07
url1 <- paste0("https://www.transfermarkt.us/rsc-charleroi/kader/verein/172/plus/0/galerie/0?saison_id=2006")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

charleroi_value_0607 <- data.frame(html_table(tables1[36]))

##### 4 Antwerp #####
### 19-20
url1 <- paste0("https://www.transfermarkt.us/royal-antwerp-fc/kader/verein/1096/plus/0/galerie/0?saison_id=2019")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

antwerp_value_1920 <- data.frame(html_table(tables1[40]))

### 18-19
url1 <- paste0("https://www.transfermarkt.us/royal-antwerp-fc/kader/verein/1096/plus/0/galerie/0?saison_id=2018")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

antwerp_value_1819 <- data.frame(html_table(tables1[36]))

### 17-18
url1 <- paste0("https://www.transfermarkt.us/royal-antwerp-fc/kader/verein/1096/plus/0/galerie/0?saison_id=2017")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

antwerp_value_1718 <- data.frame(html_table(tables1[45]))

### 16-17
url1 <- paste0("https://www.transfermarkt.us/royal-antwerp-fc/kader/verein/1096/plus/0/galerie/0?saison_id=2016")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

antwerp_value_1617 <- data.frame(html_table(tables1[35]))

### 15-16
url1 <- paste0("https://www.transfermarkt.us/royal-antwerp-fc/kader/verein/1096/plus/0/galerie/0?saison_id=2015")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

antwerp_value_1516 <- data.frame(html_table(tables1[34]))

##### 5 Standard ######

### 19-20
url1 <- paste0("https://www.transfermarkt.us/standard-liege/kader/verein/3057/plus/0/galerie/0?saison_id=2019")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

standard_value_1920 <- data.frame(html_table(tables1[39]))

### 18-19
url1 <- paste0("https://www.transfermarkt.us/standard-liege/kader/verein/3057/plus/0/galerie/0?saison_id=2018")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

standard_value_1819 <- data.frame(html_table(tables1[39]))

### 17-18
url1 <- paste0("https://www.transfermarkt.us/standard-liege/kader/verein/3057/plus/0/galerie/0?saison_id=2017")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

standard_value_1718 <- data.frame(html_table(tables1[39]))

### 16-17
url1 <- paste0("https://www.transfermarkt.us/standard-liege/kader/verein/3057/plus/0/galerie/0?saison_id=2016")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

standard_value_1617 <- data.frame(html_table(tables1[53]))

### 15-16
url1 <- paste0("https://www.transfermarkt.us/standard-liege/kader/verein/3057/plus/0/galerie/0?saison_id=2015")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

standard_value_1516 <- data.frame(html_table(tables1[55]))

### 14-15
url1 <- paste0("https://www.transfermarkt.us/standard-liege/kader/verein/3057/plus/0/galerie/0?saison_id=2014")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

standard_value_1415 <- data.frame(html_table(tables1[45]))

### 13-14
url1 <- paste0("https://www.transfermarkt.us/standard-liege/kader/verein/3057/plus/0/galerie/0?saison_id=2013")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

standard_value_1314 <- data.frame(html_table(tables1[51]))

### 12-13
url1 <- paste0("https://www.transfermarkt.us/standard-liege/kader/verein/3057/plus/0/galerie/0?saison_id=2012")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

standard_value_1213 <- data.frame(html_table(tables1[47]))

### 11-12
url1 <- paste0("https://www.transfermarkt.us/standard-liege/kader/verein/3057/plus/0/galerie/0?saison_id=2011")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

standard_value_1112 <- data.frame(html_table(tables1[47]))

### 10-11
url1 <- paste0("https://www.transfermarkt.us/standard-liege/kader/verein/3057/plus/0/galerie/0?saison_id=2010")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

standard_value_1011 <- data.frame(html_table(tables1[43]))

### 09-10
url1 <- paste0("https://www.transfermarkt.us/standard-liege/kader/verein/3057/plus/0/galerie/0?saison_id=2009")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

standard_value_0910 <- data.frame(html_table(tables1[42]))

### 08-09
url1 <- paste0("https://www.transfermarkt.us/standard-liege/kader/verein/3057/plus/0/galerie/0?saison_id=2008")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

standard_value_0809 <- data.frame(html_table(tables1[36]))

### 07-08
url1 <- paste0("https://www.transfermarkt.us/standard-liege/kader/verein/3057/plus/0/galerie/0?saison_id=2007")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

standard_value_0708 <- data.frame(html_table(tables1[32]))

### 06-07
url1 <- paste0("https://www.transfermarkt.us/standard-liege/kader/verein/3057/plus/0/galerie/0?saison_id=2006")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

standard_value_0607 <- data.frame(html_table(tables1[37]))


##### 6 Mechelen #####

### 19-20
url1 <- paste0("https://www.transfermarkt.us/kv-mechelen/kader/verein/354/plus/0/galerie/0?saison_id=2019")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

mechelen_value_1920 <- data.frame(html_table(tables1[37]))

### 18-19
url1 <- paste0("https://www.transfermarkt.us/kv-mechelen/kader/verein/354/plus/0/galerie/0?saison_id=2018")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

mechelen_value_1819 <- data.frame(html_table(tables1[41]))

### 17-18
url1 <- paste0("https://www.transfermarkt.us/kv-mechelen/kader/verein/354/plus/0/galerie/0?saison_id=2017")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

mechelen_value_1718 <- data.frame(html_table(tables1[45]))

### 16-17
url1 <- paste0("https://www.transfermarkt.us/kv-mechelen/kader/verein/354/plus/0/galerie/0?saison_id=2016")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

mechelen_value_1617 <- data.frame(html_table(tables1[39]))

### 15-16
url1 <- paste0("https://www.transfermarkt.us/kv-mechelen/kader/verein/354/plus/0/galerie/0?saison_id=2015")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

mechelen_value_1516 <- data.frame(html_table(tables1[42]))

### 14-15
url1 <- paste0("https://www.transfermarkt.us/kv-mechelen/kader/verein/354/plus/0/galerie/0?saison_id=2014")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

mechelen_value_1415 <- data.frame(html_table(tables1[36]))

### 08-09
url1 <- paste0("https://www.transfermarkt.us/kv-mechelen/kader/verein/354/plus/0/galerie/0?saison_id=2008")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

mechelen_value_0809 <- data.frame(html_table(tables1[33]))

### 07-08
url1 <- paste0("https://www.transfermarkt.us/kv-mechelen/kader/verein/354/plus/0/galerie/0?saison_id=2007")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

mechelen_value_0708 <- data.frame(html_table(tables1[32]))

### 06-07
url1 <- paste0("https://www.transfermarkt.us/kv-mechelen/kader/verein/354/plus/0/galerie/0?saison_id=2006")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

mechelen_value_0607 <- data.frame(html_table(tables1[28]))

##### 7 Genk #####


### 19-20
url1 <- paste0("https://www.transfermarkt.us/krc-genk/kader/verein/1184/plus/0/galerie/0?saison_id=2019")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

genk_value_1920 <- data.frame(html_table(tables1[40]))

### 18-19
url1 <- paste0("https://www.transfermarkt.us/krc-genk/kader/verein/1184/plus/0/galerie/0?saison_id=2018")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

genk_value_1819 <- data.frame(html_table(tables1[38]))

### 17-18
url1 <- paste0("https://www.transfermarkt.us/krc-genk/kader/verein/1184/plus/0/galerie/0?saison_id=2017")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

genk_value_1718 <- data.frame(html_table(tables1[36]))

### 16-17
url1 <- paste0("https://www.transfermarkt.us/krc-genk/kader/verein/1184/plus/0/galerie/0?saison_id=2016")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

genk_value_1617 <- data.frame(html_table(tables1[41]))

### 15-16
url1 <- paste0("https://www.transfermarkt.us/krc-genk/kader/verein/1184/plus/0/galerie/0?saison_id=2015")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

genk_value_1516 <- data.frame(html_table(tables1[40]))

### 14-15
url1 <- paste0("https://www.transfermarkt.us/krc-genk/kader/verein/1184/plus/0/galerie/0?saison_id=2014")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

genk_value_1415 <- data.frame(html_table(tables1[38]))

### 13-14
url1 <- paste0("https://www.transfermarkt.us/krc-genk/kader/verein/1184/plus/0/galerie/0?saison_id=2013")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

genk_value_1314 <- data.frame(html_table(tables1[41]))

### 12-13
url1 <- paste0("https://www.transfermarkt.us/krc-genk/kader/verein/1184/plus/0/galerie/0?saison_id=2012")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

genk_value_1213 <- data.frame(html_table(tables1[43]))

### 11-12
url1 <- paste0("https://www.transfermarkt.us/krc-genk/kader/verein/1184/plus/0/galerie/0?saison_id=2011")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

genk_value_1112 <- data.frame(html_table(tables1[39]))

### 10-11
url1 <- paste0("https://www.transfermarkt.us/krc-genk/kader/verein/1184/plus/0/galerie/0?saison_id=2010")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

genk_value_1011 <- data.frame(html_table(tables1[36]))

### 09-10
url1 <- paste0("https://www.transfermarkt.us/krc-genk/kader/verein/1184/plus/0/galerie/0?saison_id=2009")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

genk_value_0910 <- data.frame(html_table(tables1[33]))

### 08-09
url1 <- paste0("https://www.transfermarkt.us/krc-genk/kader/verein/1184/plus/0/galerie/0?saison_id=2008")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

genk_value_0809 <- data.frame(html_table(tables1[38]))

### 07-08
url1 <- paste0("https://www.transfermarkt.us/krc-genk/kader/verein/1184/plus/0/galerie/0?saison_id=2007")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

genk_value_0708 <- data.frame(html_table(tables1[37]))

### 06-07
url1 <- paste0("https://www.transfermarkt.us/krc-genk/kader/verein/1184/plus/0/galerie/0?saison_id=2006")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

genk_value_0607 <- data.frame(html_table(tables1[29]))

##### 8 Anderlecht #####


### 19-20
url1 <- paste0("https://www.transfermarkt.us/rsc-anderlecht/kader/verein/58/plus/0/galerie/0?saison_id=2019")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

anderlecht_value_1920 <- data.frame(html_table(tables1[46]))

### 18-19
url1 <- paste0("https://www.transfermarkt.us/rsc-anderlecht/kader/verein/58/plus/0/galerie/0?saison_id=2018")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

anderlecht_value_1819 <- data.frame(html_table(tables1[49]))

### 17-18
url1 <- paste0("https://www.transfermarkt.us/rsc-anderlecht/kader/verein/58/plus/0/galerie/0?saison_id=2017")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

anderlecht_value_1718 <- data.frame(html_table(tables1[44]))

### 16-17
url1 <- paste0("https://www.transfermarkt.us/rsc-anderlecht/kader/verein/58/plus/0/galerie/0?saison_id=2016")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

anderlecht_value_1617 <- data.frame(html_table(tables1[49]))

### 15-16
url1 <- paste0("https://www.transfermarkt.us/rsc-anderlecht/kader/verein/58/plus/0/galerie/0?saison_id=2015")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

anderlecht_value_1516 <- data.frame(html_table(tables1[39]))

### 14-15
url1 <- paste0("https://www.transfermarkt.us/rsc-anderlecht/kader/verein/58/plus/0/galerie/0?saison_id=2014")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

anderlecht_value_1415 <- data.frame(html_table(tables1[37]))

### 13-14
url1 <- paste0("https://www.transfermarkt.us/rsc-anderlecht/kader/verein/58/plus/0/galerie/0?saison_id=2013")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

anderlecht_value_1314 <- data.frame(html_table(tables1[38]))

### 12-13
url1 <- paste0("https://www.transfermarkt.us/rsc-anderlecht/kader/verein/58/plus/0/galerie/0?saison_id=2012")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

anderlecht_value_1213 <- data.frame(html_table(tables1[44]))

### 11-12
url1 <- paste0("https://www.transfermarkt.us/rsc-anderlecht/kader/verein/58/plus/0/galerie/0?saison_id=2011")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

anderlecht_value_1112 <- data.frame(html_table(tables1[37]))

### 10-11
url1 <- paste0("https://www.transfermarkt.us/rsc-anderlecht/kader/verein/58/plus/0/galerie/0?saison_id=2010")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

anderlecht_value_1011 <- data.frame(html_table(tables1[39]))

### 09-10
url1 <- paste0("https://www.transfermarkt.us/rsc-anderlecht/kader/verein/58/plus/0/galerie/0?saison_id=2009")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

anderlecht_value_0910 <- data.frame(html_table(tables1[35]))

### 08-09
url1 <- paste0("https://www.transfermarkt.us/rsc-anderlecht/kader/verein/58/plus/0/galerie/0?saison_id=2008")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

anderlecht_value_0809 <- data.frame(html_table(tables1[36]))

### 07-08
url1 <- paste0("https://www.transfermarkt.us/rsc-anderlecht/kader/verein/58/plus/0/galerie/0?saison_id=2007")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

anderlecht_value_0708 <- data.frame(html_table(tables1[36]))

### 06-07
url1 <- paste0("https://www.transfermarkt.us/rsc-anderlecht/kader/verein/58/plus/0/galerie/0?saison_id=2006")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

anderlecht_value_0607 <- data.frame(html_table(tables1[36]))


##### 9 Zulte #####

### 19-20
url1 <- paste0("https://www.transfermarkt.us/sv-zulte-waregem/kader/verein/3508/plus/0/galerie/0?saison_id=2019")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

zulte_value_1920 <- data.frame(html_table(tables1[37]))

### 18-19
url1 <- paste0("https://www.transfermarkt.us/sv-zulte-waregem/kader/verein/3508/plus/0/galerie/0?saison_id=2018")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

zulte_value_1819 <- data.frame(html_table(tables1[41]))

### 17-18
url1 <- paste0("https://www.transfermarkt.us/sv-zulte-waregem/kader/verein/3508/plus/0/galerie/0?saison_id=2017")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

zulte_value_1718 <- data.frame(html_table(tables1[39]))

### 16-17
url1 <- paste0("https://www.transfermarkt.us/sv-zulte-waregem/kader/verein/3508/plus/0/galerie/0?saison_id=2016")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

zulte_value_1617 <- data.frame(html_table(tables1[35]))

### 15-16
url1 <- paste0("https://www.transfermarkt.us/sv-zulte-waregem/kader/verein/3508/plus/0/galerie/0?saison_id=2015")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

zulte_value_1516 <- data.frame(html_table(tables1[35]))

### 14-15
url1 <- paste0("https://www.transfermarkt.us/sv-zulte-waregem/kader/verein/3508/plus/0/galerie/0?saison_id=2014")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

zulte_value_1415 <- data.frame(html_table(tables1[42]))

### 13-14
url1 <- paste0("https://www.transfermarkt.us/sv-zulte-waregem/kader/verein/3508/plus/0/galerie/0?saison_id=2013")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

zulte_value_1314 <- data.frame(html_table(tables1[40]))

### 12-13
url1 <- paste0("https://www.transfermarkt.us/sv-zulte-waregem/kader/verein/3508/plus/0/galerie/0?saison_id=2012")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

zulte_value_1213 <- data.frame(html_table(tables1[36]))

### 11-12
url1 <- paste0("https://www.transfermarkt.us/sv-zulte-waregem/kader/verein/3508/plus/0/galerie/0?saison_id=2011")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

zulte_value_1112 <- data.frame(html_table(tables1[39]))

### 10-11
url1 <- paste0("https://www.transfermarkt.us/sv-zulte-waregem/kader/verein/3508/plus/0/galerie/0?saison_id=2010")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

zulte_value_1011 <- data.frame(html_table(tables1[34]))

### 09-10
url1 <- paste0("https://www.transfermarkt.us/sv-zulte-waregem/kader/verein/3508/plus/0/galerie/0?saison_id=2009")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

zulte_value_0910 <- data.frame(html_table(tables1[35]))

### 08-09
url1 <- paste0("https://www.transfermarkt.us/sv-zulte-waregem/kader/verein/3508/plus/0/galerie/0?saison_id=2008")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

zulte_value_0809 <- data.frame(html_table(tables1[36]))

### 07-08
url1 <- paste0("https://www.transfermarkt.us/sv-zulte-waregem/kader/verein/3508/plus/0/galerie/0?saison_id=2007")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

zulte_value_0708 <- data.frame(html_table(tables1[29]))

### 06-07
url1 <- paste0("https://www.transfermarkt.us/sv-zulte-waregem/kader/verein/3508/plus/0/galerie/0?saison_id=2006")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

zulte_value_0607 <- data.frame(html_table(tables1[31]))

##### 10 Mouscron #####

### 19-20
url1 <- paste0("https://www.transfermarkt.us/royal-excel-mouscron/kader/verein/29228/plus/0/galerie/0?saison_id=2019")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

mouscron_value_1920 <- data.frame(html_table(tables1[39]))

### 18-19
url1 <- paste0("https://www.transfermarkt.us/royal-excel-mouscron/kader/verein/29228/plus/0/galerie/0?saison_id=2018")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

mouscron_value_1819 <- data.frame(html_table(tables1[45]))

### 17-18
url1 <- paste0("https://www.transfermarkt.us/royal-excel-mouscron/kader/verein/29228/plus/0/galerie/0?saison_id=2017")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

mouscron_value_1718 <- data.frame(html_table(tables1[40]))

### 16-17
url1 <- paste0("https://www.transfermarkt.us/royal-excel-mouscron/kader/verein/29228/plus/0/galerie/0?saison_id=2016")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

mouscron_value_1617 <- data.frame(html_table(tables1[46]))

### 15-16
url1 <- paste0("https://www.transfermarkt.us/royal-excel-mouscron/kader/verein/29228/plus/0/galerie/0?saison_id=2015")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

mouscron_value_1516 <- data.frame(html_table(tables1[44]))

### 14-15
url1 <- paste0("https://www.transfermarkt.us/royal-excel-mouscron/kader/verein/29228/plus/0/galerie/0?saison_id=2014")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

mouscron_value_1415 <- data.frame(html_table(tables1[43]))

### 13-14
url1 <- paste0("https://www.transfermarkt.us/royal-excel-mouscron/kader/verein/29228/plus/0/galerie/0?saison_id=2013")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

mouscron_value_1314 <- data.frame(html_table(tables1[36]))

##### 11 Kortrijk #####

### 19-20
url1 <- paste0("https://www.transfermarkt.us/kv-kortrijk/kader/verein/601/plus/0/galerie/0?saison_id=2019")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

kortrijk_value_1920 <- data.frame(html_table(tables1[33]))

### 18-19
url1 <- paste0("https://www.transfermarkt.us/kv-kortrijk/kader/verein/601/plus/0/galerie/0?saison_id=2018")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

kortrijk_value_1819 <- data.frame(html_table(tables1[38]))

### 17-18
url1 <- paste0("https://www.transfermarkt.us/kv-kortrijk/kader/verein/601/plus/0/galerie/0?saison_id=2017")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

kortrijk_value_1718 <- data.frame(html_table(tables1[37]))

### 16-17
url1 <- paste0("https://www.transfermarkt.us/kv-kortrijk/kader/verein/601/plus/0/galerie/0?saison_id=2016")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

kortrijk_value_1617 <- data.frame(html_table(tables1[44]))

### 15-16
url1 <- paste0("https://www.transfermarkt.us/kv-kortrijk/kader/verein/601/plus/0/galerie/0?saison_id=2015")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

kortrijk_value_1516 <- data.frame(html_table(tables1[33]))

### 14-15
url1 <- paste0("https://www.transfermarkt.us/kv-kortrijk/kader/verein/601/plus/0/galerie/0?saison_id=2014")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

kortrijk_value_1415 <- data.frame(html_table(tables1[33]))

### 13-14
url1 <- paste0("https://www.transfermarkt.us/kv-kortrijk/kader/verein/601/plus/0/galerie/0?saison_id=2013")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

kortrijk_value_1314 <- data.frame(html_table(tables1[38]))

### 12-13
url1 <- paste0("https://www.transfermarkt.us/kv-kortrijk/kader/verein/601/plus/0/galerie/0?saison_id=2012")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

kortrijk_value_1213 <- data.frame(html_table(tables1[33]))

### 11-12
url1 <- paste0("https://www.transfermarkt.us/kv-kortrijk/kader/verein/601/plus/0/galerie/0?saison_id=2011")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

kortrijk_value_1112 <- data.frame(html_table(tables1[30]))

### 10-11
url1 <- paste0("https://www.transfermarkt.us/kv-kortrijk/kader/verein/601/plus/0/galerie/0?saison_id=2010")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

kortrijk_value_1011 <- data.frame(html_table(tables1[33]))

### 09-10
url1 <- paste0("https://www.transfermarkt.us/kv-kortrijk/kader/verein/601/plus/0/galerie/0?saison_id=2009")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

kortrijk_value_0910 <- data.frame(html_table(tables1[32]))

### 08-09
url1 <- paste0("https://www.transfermarkt.us/kv-kortrijk/kader/verein/601/plus/0/galerie/0?saison_id=2008")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

kortrijk_value_0809 <- data.frame(html_table(tables1[30]))

### 07-08
url1 <- paste0("https://www.transfermarkt.us/kv-kortrijk/kader/verein/601/plus/0/galerie/0?saison_id=2007")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

kortrijk_value_0708 <- data.frame(html_table(tables1[32]))

### 06-07
url1 <- paste0("https://www.transfermarkt.us/kv-kortrijk/kader/verein/601/plus/0/galerie/0?saison_id=2006")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

kortrijk_value_0607 <- data.frame(html_table(tables1[24]))

##### 12 Truiden #####

### 19-20
url1 <- paste0("https://www.transfermarkt.us/sint-truidense-vv/kader/verein/475/plus/0/galerie/0?saison_id=2019")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

truidense_value_1920 <- data.frame(html_table(tables1[41]))

### 18-19
url1 <- paste0("https://www.transfermarkt.us/sint-truidense-vv/kader/verein/475/plus/0/galerie/0?saison_id=2018")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

truidense_value_1819 <- data.frame(html_table(tables1[39]))

### 17-18
url1 <- paste0("https://www.transfermarkt.us/sint-truidense-vv/kader/verein/475/plus/0/galerie/0?saison_id=2017")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

truidense_value_1718 <- data.frame(html_table(tables1[32]))

### 16-17
url1 <- paste0("https://www.transfermarkt.us/sint-truidense-vv/kader/verein/475/plus/0/galerie/0?saison_id=2016")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

truidense_value_1617 <- data.frame(html_table(tables1[43]))

### 15-16
url1 <- paste0("https://www.transfermarkt.us/sint-truidense-vv/kader/verein/475/plus/0/galerie/0?saison_id=2015")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

truidense_value_1516 <- data.frame(html_table(tables1[47]))

### 14-15
url1 <- paste0("https://www.transfermarkt.us/sint-truidense-vv/kader/verein/475/plus/0/galerie/0?saison_id=2014")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

truidense_value_1415 <- data.frame(html_table(tables1[31]))

### 13-14
url1 <- paste0("https://www.transfermarkt.us/sint-truidense-vv/kader/verein/475/plus/0/galerie/0?saison_id=2013")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

truidense_value_1314 <- data.frame(html_table(tables1[43]))

### 12-13
url1 <- paste0("https://www.transfermarkt.us/sint-truidense-vv/kader/verein/475/plus/0/galerie/0?saison_id=2012")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

truidense_value_1213 <- data.frame(html_table(tables1[40]))

### 11-12
url1 <- paste0("https://www.transfermarkt.us/sint-truidense-vv/kader/verein/475/plus/0/galerie/0?saison_id=2011")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

truidense_value_1112 <- data.frame(html_table(tables1[37]))

### 10-11
url1 <- paste0("https://www.transfermarkt.us/sint-truidense-vv/kader/verein/475/plus/0/galerie/0?saison_id=2010")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

truidense_value_1011 <- data.frame(html_table(tables1[39]))

### 09-10
url1 <- paste0("https://www.transfermarkt.us/sint-truidense-vv/kader/verein/475/plus/0/galerie/0?saison_id=2009")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

truidense_value_0910 <- data.frame(html_table(tables1[30]))

### 08-09
url1 <- paste0("https://www.transfermarkt.us/sint-truidense-vv/kader/verein/475/plus/0/galerie/0?saison_id=2008")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

truidense_value_0809 <- data.frame(html_table(tables1[26]))

### 07-08
url1 <- paste0("https://www.transfermarkt.us/sint-truidense-vv/kader/verein/475/plus/0/galerie/0?saison_id=2007")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

truidense_value_0708 <- data.frame(html_table(tables1[38]))

### 06-07
url1 <- paste0("https://www.transfermarkt.us/sint-truidense-vv/kader/verein/475/plus/0/galerie/0?saison_id=2006")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

truidense_value_0607 <- data.frame(html_table(tables1[33]))

##### 13 Eupen #####

### 19-20
url1 <- paste0("https://www.transfermarkt.us/kas-eupen/kader/verein/1245/plus/0/galerie/0?saison_id=2019")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

eupen_value_1920 <- data.frame(html_table(tables1[39]))

### 18-19
url1 <- paste0("https://www.transfermarkt.us/kas-eupen/kader/verein/1245/plus/0/galerie/0?saison_id=2018")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

eupen_value_1819 <- data.frame(html_table(tables1[39]))

### 17-18
url1 <- paste0("https://www.transfermarkt.us/kas-eupen/kader/verein/1245/plus/0/galerie/0?saison_id=2017")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

eupen_value_1718 <- data.frame(html_table(tables1[41]))

### 16-17
url1 <- paste0("https://www.transfermarkt.us/kas-eupen/kader/verein/1245/plus/0/galerie/0?saison_id=2016")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

eupen_value_1617 <- data.frame(html_table(tables1[35]))

### 15-16
url1 <- paste0("https://www.transfermarkt.us/kas-eupen/kader/verein/1245/plus/0/galerie/0?saison_id=2015")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

eupen_value_1516 <- data.frame(html_table(tables1[34]))

### 10-11
url1 <- paste0("https://www.transfermarkt.us/kas-eupen/kader/verein/1245/plus/0/galerie/0?saison_id=2010")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

eupen_value_1011 <- data.frame(html_table(tables1[39]))

### 09-10
url1 <- paste0("https://www.transfermarkt.us/kas-eupen/kader/verein/1245/plus/0/galerie/0?saison_id=2009")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

eupen_value_0910 <- data.frame(html_table(tables1[33]))

##### 14 Cercle Brugge #####


### 19-20
url1 <- paste0("https://www.transfermarkt.us/cercle-brugge/kader/verein/520/plus/0/galerie/0?saison_id=2019")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

cercle_brugge_value_1920 <- data.frame(html_table(tables1[49]))

### 18-19
url1 <- paste0("https://www.transfermarkt.us/cercle-brugge/kader/verein/520/plus/0/galerie/0?saison_id=2018")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

cercle_brugge_value_1819 <- data.frame(html_table(tables1[38]))

### 17-18
url1 <- paste0("https://www.transfermarkt.us/cercle-brugge/kader/verein/520/plus/0/galerie/0?saison_id=2017")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

cercle_brugge_value_1718 <- data.frame(html_table(tables1[39]))

### 16-17
url1 <- paste0("https://www.transfermarkt.us/cercle-brugge/kader/verein/520/plus/0/galerie/0?saison_id=2016")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

cercle_brugge_value_1617 <- data.frame(html_table(tables1[41]))

### 15-16
url1 <- paste0("https://www.transfermarkt.us/cercle-brugge/kader/verein/520/plus/0/galerie/0?saison_id=2015")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

cercle_brugge_value_1516 <- data.frame(html_table(tables1[30]))

### 14-15
url1 <- paste0("https://www.transfermarkt.us/cercle-brugge/kader/verein/520/plus/0/galerie/0?saison_id=2014")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

cercle_brugge_value_1415 <- data.frame(html_table(tables1[32]))

### 13-14
url1 <- paste0("https://www.transfermarkt.us/cercle-brugge/kader/verein/520/plus/0/galerie/0?saison_id=2013")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

cercle_brugge_value_1314 <- data.frame(html_table(tables1[37]))

### 12-13
url1 <- paste0("https://www.transfermarkt.us/cercle-brugge/kader/verein/520/plus/0/galerie/0?saison_id=2012")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

cercle_brugge_value_1213 <- data.frame(html_table(tables1[37]))

### 11-12
url1 <- paste0("https://www.transfermarkt.us/cercle-brugge/kader/verein/520/plus/0/galerie/0?saison_id=2011")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

cercle_brugge_value_1112 <- data.frame(html_table(tables1[33]))

### 10-11
url1 <- paste0("https://www.transfermarkt.us/cercle-brugge/kader/verein/520/plus/0/galerie/0?saison_id=2010")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

cercle_brugge_value_1011 <- data.frame(html_table(tables1[41]))

### 09-10
url1 <- paste0("https://www.transfermarkt.us/cercle-brugge/kader/verein/520/plus/0/galerie/0?saison_id=2009")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

cercle_brugge_value_0910 <- data.frame(html_table(tables1[33]))

### 08-09
url1 <- paste0("https://www.transfermarkt.us/cercle-brugge/kader/verein/520/plus/0/galerie/0?saison_id=2008")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

cercle_brugge_value_0809 <- data.frame(html_table(tables1[31]))

### 07-08
url1 <- paste0("https://www.transfermarkt.us/cercle-brugge/kader/verein/520/plus/0/galerie/0?saison_id=2007")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

cercle_brugge_value_0708 <- data.frame(html_table(tables1[27]))

### 06-07
url1 <- paste0("https://www.transfermarkt.us/cercle-brugge/kader/verein/520/plus/0/galerie/0?saison_id=2006")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

cercle_brugge_value_0607 <- data.frame(html_table(tables1[32]))

##### 15 Oostende #####

### 19-20
url1 <- paste0("https://www.transfermarkt.us/kv-oostende/kader/verein/2861/plus/0/galerie/0?saison_id=2019")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

oostende_value_1920 <- data.frame(html_table(tables1[35]))

### 18-19
url1 <- paste0("https://www.transfermarkt.us/kv-oostende/kader/verein/2861/plus/0/galerie/0?saison_id=2018")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

oostende_value_1819 <- data.frame(html_table(tables1[35]))

### 17-18
url1 <- paste0("https://www.transfermarkt.us/kv-oostende/kader/verein/2861/plus/0/galerie/0?saison_id=2017")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

oostende_value_1718 <- data.frame(html_table(tables1[39]))

### 16-17
url1 <- paste0("https://www.transfermarkt.us/kv-oostende/kader/verein/2861/plus/0/galerie/0?saison_id=2016")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

oostende_value_1617 <- data.frame(html_table(tables1[37]))

### 15-16
url1 <- paste0("https://www.transfermarkt.us/kv-oostende/kader/verein/2861/plus/0/galerie/0?saison_id=2015")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

oostende_value_1516 <- data.frame(html_table(tables1[33]))

### 14-15
url1 <- paste0("https://www.transfermarkt.us/kv-oostende/kader/verein/2861/plus/0/galerie/0?saison_id=2014")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

oostende_value_1415 <- data.frame(html_table(tables1[31]))

### 13-14
url1 <- paste0("https://www.transfermarkt.us/kv-oostende/kader/verein/2861/plus/0/galerie/0?saison_id=2013")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

oostende_value_1314 <- data.frame(html_table(tables1[37]))

### 12-13
url1 <- paste0("https://www.transfermarkt.us/kv-oostende/kader/verein/2861/plus/0/galerie/0?saison_id=2012")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

oostende_value_1213 <- data.frame(html_table(tables1[28]))

##### 16 Waasland #####

### 19-20
url1 <- paste0("https://www.transfermarkt.us/waasland-beveren/kader/verein/28643/plus/0/galerie/0?saison_id=2019")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

waasland_value_1920 <- data.frame(html_table(tables1[36]))

### 18-19
url1 <- paste0("https://www.transfermarkt.us/waasland-beveren/kader/verein/28643/plus/0/galerie/0?saison_id=2018")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

waasland_value_1819 <- data.frame(html_table(tables1[39]))

### 17-18
url1 <- paste0("https://www.transfermarkt.us/waasland-beveren/kader/verein/28643/plus/0/galerie/0?saison_id=2017")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

waasland_value_1718 <- data.frame(html_table(tables1[38]))

### 16-17
url1 <- paste0("https://www.transfermarkt.us/waasland-beveren/kader/verein/28643/plus/0/galerie/0?saison_id=2016")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

waasland_value_1617 <- data.frame(html_table(tables1[39]))

### 15-16
url1 <- paste0("https://www.transfermarkt.us/waasland-beveren/kader/verein/28643/plus/0/galerie/0?saison_id=2015")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

waasland_value_1516 <- data.frame(html_table(tables1[36]))

### 14-15
url1 <- paste0("https://www.transfermarkt.us/waasland-beveren/kader/verein/28643/plus/0/galerie/0?saison_id=2014")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

waasland_value_1415 <- data.frame(html_table(tables1[42]))

### 13-14
url1 <- paste0("https://www.transfermarkt.us/waasland-beveren/kader/verein/28643/plus/0/galerie/0?saison_id=2013")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

waasland_value_1314 <- data.frame(html_table(tables1[35]))

### 12-13
url1 <- paste0("https://www.transfermarkt.us/waasland-beveren/kader/verein/28643/plus/0/galerie/0?saison_id=2012")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

waasland_value_1213 <- data.frame(html_table(tables1[39]))

### 11-12
url1 <- paste0("https://www.transfermarkt.us/waasland-beveren/kader/verein/28643/plus/0/galerie/0?saison_id=2011")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

waasland_value_1112 <- data.frame(html_table(tables1[30]))

##### 17 Beerschot #####


### 19-20
url1 <- paste0("https://www.transfermarkt.us/beerschot-v-a-/kader/verein/41274/plus/0/galerie/0?saison_id=2019")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

beerschot_value_1920 <- data.frame(html_table(tables1[35]))


### 12-13
url1 <- paste0("https://www.transfermarkt.us/beerschot-ac/kader/verein/566/plus/0/galerie/0?saison_id=2012")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

beerschot_value_1213 <- data.frame(html_table(tables1[43]))

### 11-12
url1 <- paste0("https://www.transfermarkt.us/beerschot-ac/kader/verein/566/plus/0/galerie/0?saison_id=2011")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

beerschot_value_1112 <- data.frame(html_table(tables1[34]))

### 10-11
url1 <- paste0("https://www.transfermarkt.us/beerschot-ac/kader/verein/566/plus/0/galerie/0?saison_id=2010")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

beerschot_value_1011 <- data.frame(html_table(tables1[39]))

### 09-10
url1 <- paste0("https://www.transfermarkt.us/beerschot-ac/kader/verein/566/plus/0/galerie/0?saison_id=2009")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

beerschot_value_0910 <- data.frame(html_table(tables1[38]))

### 08-09
url1 <- paste0("https://www.transfermarkt.us/beerschot-ac/kader/verein/566/plus/0/galerie/0?saison_id=2008")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

beerschot_value_0809 <- data.frame(html_table(tables1[44]))

### 07-08
url1 <- paste0("https://www.transfermarkt.us/beerschot-ac/kader/verein/566/plus/0/galerie/0?saison_id=2007")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

beerschot_value_0708 <- data.frame(html_table(tables1[37]))

### 06-07
url1 <- paste0("https://www.transfermarkt.us/beerschot-ac/kader/verein/566/plus/0/galerie/0?saison_id=2006")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

beerschot_value_0607 <- data.frame(html_table(tables1[35]))


##### 18 OH Leuven #####

### 19-20
url1 <- paste0("https://www.transfermarkt.us/oud-heverlee-leuven/kader/verein/2727/plus/0/galerie/0?saison_id=2019")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

leuven_value_1920 <- data.frame(html_table(tables1[41]))

### 15-16
url1 <- paste0("https://www.transfermarkt.us/oud-heverlee-leuven/kader/verein/2727/plus/0/galerie/0?saison_id=2015")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

leuven_value_1516 <- data.frame(html_table(tables1[34]))

### 14-15
url1 <- paste0("https://www.transfermarkt.us/oud-heverlee-leuven/kader/verein/2727/plus/0/galerie/0?saison_id=2014")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

leuven_value_1415 <- data.frame(html_table(tables1[34]))

### 13-14
url1 <- paste0("https://www.transfermarkt.us/oud-heverlee-leuven/kader/verein/2727/plus/0/galerie/0?saison_id=2013")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

leuven_value_1314 <- data.frame(html_table(tables1[41]))

### 12-13
url1 <- paste0("https://www.transfermarkt.us/oud-heverlee-leuven/kader/verein/2727/plus/0/galerie/0?saison_id=2012")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

leuven_value_1213 <- data.frame(html_table(tables1[37]))

### 11-12
url1 <- paste0("https://www.transfermarkt.us/oud-heverlee-leuven/kader/verein/2727/plus/0/galerie/0?saison_id=2011")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

leuven_value_1112 <- data.frame(html_table(tables1[35]))

### 10-11
url1 <- paste0("https://www.transfermarkt.us/oud-heverlee-leuven/kader/verein/2727/plus/0/galerie/0?saison_id=2010")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

leuven_value_1011 <- data.frame(html_table(tables1[30]))


##### 19 Lokeren #####

### 19-20
url1 <- paste0("https://www.transfermarkt.us/ksc-lokeren/kader/verein/498/plus/0/galerie/0?saison_id=2019")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

lokeren_value_1920 <- data.frame(html_table(tables1[42]))

### 18-19
url1 <- paste0("https://www.transfermarkt.us/ksc-lokeren/kader/verein/498/plus/0/galerie/0?saison_id=2018")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

lokeren_value_1819 <- data.frame(html_table(tables1[41]))

### 17-18
url1 <- paste0("https://www.transfermarkt.us/ksc-lokeren/kader/verein/498/plus/0/galerie/0?saison_id=2017")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

lokeren_value_1718 <- data.frame(html_table(tables1[39]))

### 16-17
url1 <- paste0("https://www.transfermarkt.us/ksc-lokeren/kader/verein/498/plus/0/galerie/0?saison_id=2016")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

lokeren_value_1617 <- data.frame(html_table(tables1[42]))

### 15-16
url1 <- paste0("https://www.transfermarkt.us/ksc-lokeren/kader/verein/498/plus/0/galerie/0?saison_id=2015")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

lokeren_value_1516 <- data.frame(html_table(tables1[39]))

### 14-15
url1 <- paste0("https://www.transfermarkt.us/ksc-lokeren/kader/verein/498/plus/0/galerie/0?saison_id=2014")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

lokeren_value_1415 <- data.frame(html_table(tables1[36]))

### 13-14
url1 <- paste0("https://www.transfermarkt.us/ksc-lokeren/kader/verein/498/plus/0/galerie/0?saison_id=2013")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

lokeren_value_1314 <- data.frame(html_table(tables1[34]))

### 12-13
url1 <- paste0("https://www.transfermarkt.us/ksc-lokeren/kader/verein/498/plus/0/galerie/0?saison_id=2012")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

lokeren_value_1213 <- data.frame(html_table(tables1[39]))

### 11-12
url1 <- paste0("https://www.transfermarkt.us/ksc-lokeren/kader/verein/498/plus/0/galerie/0?saison_id=2011")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

lokeren_value_1112 <- data.frame(html_table(tables1[34]))

### 10-11
url1 <- paste0("https://www.transfermarkt.us/ksc-lokeren/kader/verein/498/plus/0/galerie/0?saison_id=2010")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

lokeren_value_1011 <- data.frame(html_table(tables1[32]))

### 09-10
url1 <- paste0("https://www.transfermarkt.us/ksc-lokeren/kader/verein/498/plus/0/galerie/0?saison_id=2009")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

lokeren_value_0910 <- data.frame(html_table(tables1[36]))

### 08-09
url1 <- paste0("https://www.transfermarkt.us/ksc-lokeren/kader/verein/498/plus/0/galerie/0?saison_id=2008")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

lokeren_value_0809 <- data.frame(html_table(tables1[33]))

### 07-08
url1 <- paste0("https://www.transfermarkt.us/ksc-lokeren/kader/verein/498/plus/0/galerie/0?saison_id=2007")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

lokeren_value_0708 <- data.frame(html_table(tables1[34]))

### 06-07
url1 <- paste0("https://www.transfermarkt.us/ksc-lokeren/kader/verein/498/plus/0/galerie/0?saison_id=2006")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

lokeren_value_0607 <- data.frame(html_table(tables1[34]))

##### 20 Westerlo #####


### 16-17
url1 <- paste0("https://www.transfermarkt.us/kvc-westerlo/kader/verein/968/plus/0/galerie/0?saison_id=2016")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

westerlo_value_1617 <- data.frame(html_table(tables1[33]))

### 15-16
url1 <- paste0("https://www.transfermarkt.us/kvc-westerlo/kader/verein/968/plus/0/galerie/0?saison_id=2015")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

westerlo_value_1516 <- data.frame(html_table(tables1[32]))

### 14-15
url1 <- paste0("https://www.transfermarkt.us/kvc-westerlo/kader/verein/968/plus/0/galerie/0?saison_id=2014")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

westerlo_value_1415 <- data.frame(html_table(tables1[37]))

### 13-14
url1 <- paste0("https://www.transfermarkt.us/kvc-westerlo/kader/verein/968/plus/0/galerie/0?saison_id=2013")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

westerlo_value_1314 <- data.frame(html_table(tables1[35]))

### 12-13
url1 <- paste0("https://www.transfermarkt.us/kvc-westerlo/kader/verein/968/plus/0/galerie/0?saison_id=2012")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

westerlo_value_1213 <- data.frame(html_table(tables1[33]))

### 11-12
url1 <- paste0("https://www.transfermarkt.us/kvc-westerlo/kader/verein/968/plus/0/galerie/0?saison_id=2011")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

westerlo_value_1112 <- data.frame(html_table(tables1[42]))

### 10-11
url1 <- paste0("https://www.transfermarkt.us/kvc-westerlo/kader/verein/968/plus/0/galerie/0?saison_id=2010")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

westerlo_value_1011 <- data.frame(html_table(tables1[34]))

### 09-10
url1 <- paste0("https://www.transfermarkt.us/kvc-westerlo/kader/verein/968/plus/0/galerie/0?saison_id=2009")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

westerlo_value_0910 <- data.frame(html_table(tables1[35]))

### 08-09
url1 <- paste0("https://www.transfermarkt.us/kvc-westerlo/kader/verein/968/plus/0/galerie/0?saison_id=2008")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

westerlo_value_0809 <- data.frame(html_table(tables1[31]))

### 07-08
url1 <- paste0("https://www.transfermarkt.us/kvc-westerlo/kader/verein/968/plus/0/galerie/0?saison_id=2007")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

westerlo_value_0708 <- data.frame(html_table(tables1[34]))

### 06-07
url1 <- paste0("https://www.transfermarkt.us/kvc-westerlo/kader/verein/968/plus/0/galerie/0?saison_id=2006")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

westerlo_value_0607 <- data.frame(html_table(tables1[34]))

##### 21 Lierse #####

### 14-15
url1 <- paste0("https://www.transfermarkt.us/lierse-sk/kader/verein/204/plus/0/galerie/0?saison_id=2014")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

lierse_value_1415 <- data.frame(html_table(tables1[55]))

### 13-14
url1 <- paste0("https://www.transfermarkt.us/lierse-sk/kader/verein/204/plus/0/galerie/0?saison_id=2013")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

lierse_value_1314 <- data.frame(html_table(tables1[44]))

### 12-13
url1 <- paste0("https://www.transfermarkt.us/lierse-sk/kader/verein/204/plus/0/galerie/0?saison_id=2012")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

lierse_value_1213 <- data.frame(html_table(tables1[48]))

### 11-12
url1 <- paste0("https://www.transfermarkt.us/lierse-sk/kader/verein/204/plus/0/galerie/0?saison_id=2011")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

lierse_value_1112 <- data.frame(html_table(tables1[38]))

### 10-11
url1 <- paste0("https://www.transfermarkt.us/lierse-sk/kader/verein/204/plus/0/galerie/0?saison_id=2010")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

lierse_value_1011 <- data.frame(html_table(tables1[43]))

### 09-10
url1 <- paste0("https://www.transfermarkt.us/lierse-sk/kader/verein/204/plus/0/galerie/0?saison_id=2009")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

lierse_value_0910 <- data.frame(html_table(tables1[37]))

### 08-09
url1 <- paste0("https://www.transfermarkt.us/lierse-sk/kader/verein/204/plus/0/galerie/0?saison_id=2008")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

lierse_value_0809 <- data.frame(html_table(tables1[37]))

### 07-08
url1 <- paste0("https://www.transfermarkt.us/lierse-sk/kader/verein/204/plus/0/galerie/0?saison_id=2007")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

lierse_value_0708 <- data.frame(html_table(tables1[38]))

### 06-07
url1 <- paste0("https://www.transfermarkt.us/lierse-sk/kader/verein/204/plus/0/galerie/0?saison_id=2006")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

lierse_value_0607 <- data.frame(html_table(tables1[41]))

##### 22 Brussels #####

### 07-08
url1 <- paste0("https://www.transfermarkt.us/rwdm-brussels-fc/kader/verein/3898/plus/0/galerie/0?saison_id=2007")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

brussels_value_0708 <- data.frame(html_table(tables1[44]))

### 06-07
url1 <- paste0("https://www.transfermarkt.us/rwdm-brussels-fc/kader/verein/3898/plus/0/galerie/0?saison_id=2006")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

brussels_value_0607 <- data.frame(html_table(tables1[42]))

##### 23 Dender #####

### 08-09
url1 <- paste0("https://www.transfermarkt.us/fcv-dender-eh/kader/verein/9010/plus/0/galerie/0?saison_id=2008")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

dender_value_0809 <- data.frame(html_table(tables1[39]))

### 07-08
url1 <- paste0("https://www.transfermarkt.us/fcv-dender-eh/kader/verein/9010/plus/0/galerie/0?saison_id=2007")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

dender_value_0708 <- data.frame(html_table(tables1[37]))

### 06-07
url1 <- paste0("https://www.transfermarkt.us/fcv-dender-eh/kader/verein/9010/plus/0/galerie/0?saison_id=2006")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

dender_value_0607 <- data.frame(html_table(tables1[24]))

##### 24 Tubize #####

### 08-09
url1 <- paste0("https://www.transfermarkt.us/afc-tubize/kader/verein/3772/plus/0/galerie/0?saison_id=2008")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

tubize_value_0809 <- data.frame(html_table(tables1[38]))

### 07-08
url1 <- paste0("https://www.transfermarkt.us/afc-tubize/kader/verein/3772/plus/0/galerie/0?saison_id=2007")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

tubize_value_0708 <- data.frame(html_table(tables1[32]))

##### 25 Roeselare #####

### 09-10
url1 <- paste0("https://www.transfermarkt.us/ksv-roeselare/kader/verein/2977/plus/0/galerie/0?saison_id=2009")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

roeselare_value_0910 <- data.frame(html_table(tables1[38]))

### 08-09
url1 <- paste0("https://www.transfermarkt.us/ksv-roeselare/kader/verein/2977/plus/0/galerie/0?saison_id=2008")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

roeselare_value_0809 <- data.frame(html_table(tables1[40]))

### 07-08
url1 <- paste0("https://www.transfermarkt.us/ksv-roeselare/kader/verein/2977/plus/0/galerie/0?saison_id=2007")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

roeselare_value_0708 <- data.frame(html_table(tables1[35]))

### 06-07
url1 <- paste0("https://www.transfermarkt.us/ksv-roeselare/kader/verein/2977/plus/0/galerie/0?saison_id=2006")
url1 <- html_session(url1)
tables1 <- html_nodes(url1,"table")

roeselare_value_0607 <- data.frame(html_table(tables1[35]))



dfs<-Filter(function(x) is.data.frame(get(x)) , ls())

for(d in dfs) {
  save(list=d, file=paste0(d, ".csv"))
}
