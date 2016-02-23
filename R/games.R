#' Steam Games
#' 
#' gets steam geames needs a valid steam api key
#' @export
#' @import data.table
#' @import rjson
#' @param key Steam API key
#' @param id Steam user ID
games <- function (key,id = "76561197973625640") {

  json_file1 <-
    "http://api.steampowered.com/IPlayerService/GetOwnedGames/v0001/?key="
  json_file2 <-  "&steamid="
  json_file3 <- "&include_appinfo=1&format=json"
  json_file <-
    paste(json_file1,key,json_file2,id,json_file3,sep = "")
  
  list <-
    suppressWarnings(fromJSON(paste(readLines(json_file), collapse = "")))
  list$response$games
  rbindlist(list$response$games,fill = TRUE)
}