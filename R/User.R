#' User stats for a game
#' 
#' Returns list for user stats for a game
#' @export
#' @import data.table
#' @import rjson
usrstats <- function (key,app = "440", steamid="76561197972495328") {
  json_file1 <-
    "http://api.steampowered.com/ISteamUserStats/GetUserStatsForGame/v0002/?appid="
  json_file2 <- "&key="
  json_file3 <- "&steamid="
  json_file4<- "&format=json"
  json_file <- 
    paste(json_file1,app,json_file2,key,json_file3,steamid,json_file4,sep = "")
  
  list <-
    suppressWarnings(fromJSON(paste(readLines(json_file), collapse = "")))
  
  list$playerstats
  
}
