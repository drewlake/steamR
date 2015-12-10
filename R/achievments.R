#' Steam achievments
#' 
#' get steam achievment list
#' @export
stmAchieve<- function (key,id = "76561197973625640") {
  library("rjson", lib.loc = "~/R/win-library/3.2")
  library("data.table", lib.loc = "~/R/win-library/3.2")
  json_file1 <-
    "http://api.steampowered.com/ISteamUserStats/GetPlayerAchievements/v0001/?appid=440&key="
  
  json_file2 <- "&steamid="
  json_file3<- "format=json"
  json_file <-
    paste(json_file1,key,json_file2,id,json_file3,sep = "")
  
  list <-
    suppressWarnings(fromJSON(paste(readLines(json_file), collapse = "")))
  list
  rbindlist(list$playerstats,fill = TRUE)
}