#' Global achievement percentage for a game
#' 
#' @export
#' @import data.table
#' @import rjson
glbachieve <- function (app = "440") {

  json_file1 <-
    "http://api.steampowered.com/ISteamUserStats/GetGlobalAchievementPercentagesForApp/v0002/?gameid="
  json_file2 <- "&format=json"
  json_file <- 
    paste(json_file1,app,json_file2,sep = "")
  
  list <-
    suppressWarnings(fromJSON(paste(readLines(json_file), collapse = "")))
  
  rbindlist(list$achievementpercentages$achievements,fill = TRUE)

}
