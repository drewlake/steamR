#' Game Data
#' 
#' Data about a specific game
#' @export
#' @import data.table
#' @import rjson

gameschema <- function (key,gameid = "377160") {

  url <-
    paste("http://store.steampowered.com/api/appdetails/?appids=",gameid,sep =
            "")
  
  list <-
    suppressWarnings(fromJSON(paste(readLines(url), collapse = "")))
  list <- list[[gameid]]
  list <- list$data
  list
  
}
