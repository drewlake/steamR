
  steamid <- "76561197973625640"
  json_file1 <- "http://api.steampowered.com/IPlayerService/GetOwnedGames/v0001/?key="
  json_file2<-  "&steamid="
  json_file3<- "&include_appinfo=1&format=json"
  json_file <-paste(json_file1,key,json_file2,steamid,json_file3,sep="")
  
  json_data <- fromJSON(paste(readLines(json_file), collapse=""))
  gamestatshttp<-"http://steamcommunity.com/profiles/76561197973625640/stats/440&format=json"
  gamestats <- fromJSON(paste(readLines(gamestatshttp), collapse=""))
  acheivmenthttp <- "http://api.steampowered.com/ISteamUserStats/GetGlobalAchievementPercentagesForApp/v0002/?gameid=203770&format=json"
  acheivment <-  fromJSON(paste(readLines(acheivmenthttp), collapse=""))
  'pick a random game by weighted by low play time'
  
