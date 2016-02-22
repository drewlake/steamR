#' Game Data
#' 
#' Data about a specific game
#' @export

gameschema <- function (key,gameid = "377160") {
  library("rjson", lib.loc = "~/R/win-library/3.2")
  library("data.table", lib.loc = "~/R/win-library/3.2")
  url <-
    paste("http://store.steampowered.com/api/appdetails/?appids=",gameid,sep =
            "")
  
  list <-
    suppressWarnings(fromJSON(paste(readLines(url), collapse = "")))
  list <- list[[gameid]]
  list <- list$data
  list
  
}
