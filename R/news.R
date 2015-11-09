

#' Latest news for a game
#' 
#' needs a valid steam api key
#' @export
news <- function (app = "440",count="3") {
  library("rjson", lib.loc = "~/R/win-library/3.2")
  library("data.table", lib.loc = "~/R/win-library/3.2")
  json_file1 <-
    "http://api.steampowered.com/ISteamNews/GetNewsForApp/v0002/?appid="
  json_file2 <-  "&count="
  json_file3 <- "&maxlength=300&format=json"
  json_file <- 
    paste(json_file1,app,json_file2,count,json_file3,sep = "")
  
  list <-
    suppressWarnings(fromJSON(paste(readLines(json_file), collapse = "")))

  rbindlist(list$appnews$newsitems,fill = TRUE)
}