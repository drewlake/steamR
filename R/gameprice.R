#' Game Price
#' 
#' Price of a game
#' @note Maximum of 200 per 5 mins
#' @export
#' @import data.table
#' @import rjson
#' @param gameid Steam game id
gameprice <- function (gameid = "220") {

  url<-paste("http://store.steampowered.com/api/appdetails/?appids=",gameid,sep =
          "")
  list <- suppressWarnings(fromJSON(paste(readLines(url), collapse = "")))
  list <- list[[gameid]]
  list <- list$data$price_overview$final
  list
  
}