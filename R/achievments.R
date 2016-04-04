#' Steam achievments
#' 
#' get steam achievment list
#' @export
#' @import data.table
#' @import rjson
#' @param key Steam API key
#' @param id Steam user ID
stmachieve<- function (key,id = "76561197973625640") {

  json_file1 <-
    "http://api.steampowered.com/ISteamUserStats/GetPlayerAchievements/v0001/?appid=440&key="
  
  json_file2 <- "&steamid="
  json_file3<- "format=json"
  json_file <-
    paste(json_file1,key,json_file2,id,json_file3,sep = "")
  
  list <-
    suppressWarnings(fromJSON(paste(readLines(json_file), collapse = "")))
  rbindlist(list$playerstats$achievements,fill = TRUE)
}