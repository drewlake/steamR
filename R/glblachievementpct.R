'http://api.steampowered.com/ISteamUserStats/GetGlobalAchievementPercentagesForApp/v0002/?gameid=377160&format=xml'



#' Global achievement percentage for a game
#' 
#' @export
glbachieve <- function (app = "440") {
  library("rjson", lib.loc = "~/R/win-library/3.2")
  library("data.table", lib.loc = "~/R/win-library/3.2")
  json_file1 <-
    "http://api.steampowered.com/ISteamUserStats/GetGlobalAchievementPercentagesForApp/v0002/?gameid="
  json_file2 <- "&format=json"
  json_file <- 
    paste(json_file1,app,json_file2,sep = "")
  
  list <-
    suppressWarnings(fromJSON(paste(readLines(json_file), collapse = "")))
  
  rbindlist(list$achievementpercentages$achievements,fill = TRUE)

}
