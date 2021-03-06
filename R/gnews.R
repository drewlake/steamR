#' Latest news for a game
#' 
#' Data frame for steam game news
#' @export
#' @import data.table
#' @import rjson
#' @param gameid Steam game ID
#' @param count number of news entries to return
gnews <- function (gameid = "440",count="3") {

  json_file1 <-
    "http://api.steampowered.com/ISteamNews/GetNewsForApp/v0002/?appid="
  json_file2 <-  "&count="
  json_file3 <- "&maxlength=300&format=json"
  json_file <- 
    paste(json_file1,gameid,json_file2,count,json_file3,sep = "")
  
  list <-
    suppressWarnings(fromJSON(paste(readLines(json_file), collapse = "")))

  rbindlist(list$appnews$newsitems,fill = TRUE)
}