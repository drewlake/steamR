#' Steam Friends
#' 
#' get friends list needs key
#' @export
#' @import data.table
#' @import rjson
#' @param key Steam API key
#' @param id Steam user id
friend <- function (key,id = "76561197973625640") {

  json_file1 <-
    "http://api.steampowered.com/ISteamUser/GetFriendList/v0001/?key="
  
  json_file2 <- "&steamid="
  json_file3<- "&relationship=friend&format=json"
  json_file <-
    paste(json_file1,key,json_file2,id,json_file3,sep = "")
  
  list <-
    suppressWarnings(fromJSON(paste(readLines(json_file), collapse = "")))
  list
  rbindlist(list$friendslist$friends,fill = TRUE)
}