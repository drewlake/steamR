#' User stats for a game
#' 
#' Returns list for user stats for a game
#' @export
glbstats <- function (app = "17740", key, steamid="76561197972495328") {
  library("rjson", lib.loc = "~/R/win-library/3.2")
  library("data.table", lib.loc = "~/R/win-library/3.2")
  json_file1 <-
    "http://api.steampowered.com/ISteamUserStats/GetUserStatsForGame/v0002/?appid="
  json_file2 <- "&key="
  json_file3 <- "&steamid="
  json_file <- 
    paste(json_file1,app,json_file2,key,json_file3,steamid,sep = "")
  
  list <-
    suppressWarnings(fromJSON(paste(readLines(json_file), collapse = "")))
  
  #rbindlist(list$achievementpercentages$achievements,fill = TRUE)
  
}
