
#' Global stats for a game
#' 
#' Returns list for gloabl stats for a game
#' @export
#' @import data.table
#' @import rjson
#' @param gameid Steam game ID
#' @param stat name of achievent
glbstats <- function (gameid = "17740", stat = "global.map.emp_isle") {

  json_file1 <-
    "http://api.steampowered.com/ISteamUserStats/GetGlobalStatsForGame/v0001/?format=json&appid="
  json_file2 <- "&count=1&name[0]="
  json_file <- 
    paste(json_file1,gameid,json_file2,stat,sep = "")
  
  list <-
    suppressWarnings(fromJSON(paste(readLines(json_file), collapse = "")))
  
 list
  
}
