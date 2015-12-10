
#' Global stats for a game
#' 
#' Returns list for gloabl stats for a game
#' @export
glbstats <- function (app = "17740", stat = "global.map.emp_isle") {
  library("rjson", lib.loc = "~/R/win-library/3.2")
  library("data.table", lib.loc = "~/R/win-library/3.2")
  json_file1 <-
    "http://api.steampowered.com/ISteamUserStats/GetGlobalStatsForGame/v0001/?format=json&appid="
  json_file2 <- "&count=1&name[0]="
  json_file <- 
    paste(json_file1,app,json_file2,stat,sep = "")
  
  list <-
    suppressWarnings(fromJSON(paste(readLines(json_file), collapse = "")))
  
 # rbindlist(list$achievementpercentages$achievements,fill = TRUE)
  
}