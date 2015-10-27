
steamgames <- function () {
  
  key <- "11F4F83E9C4054AAEFDF8AF401258C30"
  json_file <- "http://api.steampowered.com/IPlayerService/GetOwnedGames/v0001/?key=11F4F83E9C4054AAEFDF8AF401258C30&steamid=76561197973625640&include_appinfo=1&format=json"
  json_data <- fromJSON(paste(readLines(json_file), collapse=""))
  gamestatshttp<-"http://steamcommunity.com/profiles/76561197973625640/stats/440&format=json"
  gamestats <- fromJSON(paste(readLines(gamestatshttp), collapse=""))
  acheivmenthttp <- "http://api.steampowered.com/ISteamUserStats/GetGlobalAchievementPercentagesForApp/v0002/?gameid=203770&format=json"
  acheivment <-  fromJSON(paste(readLines(acheivmenthttp), collapse=""))
  'pick a random game by weighted by low play time'
  
}
