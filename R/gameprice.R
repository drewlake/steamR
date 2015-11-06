#' Game Price
#' 
#' Price of a game
#' @note Maximum of 200 per 5 mins
#' @export
gameprice <- function (gameid = "220") {
  library("rjson", lib.loc = "~/R/win-library/3.2")
  library("data.table", lib.loc = "~/R/win-library/3.2")
  url<-paste("http://store.steampowered.com/api/appdetails/?appids=",gameid,sep =
          "")
  list <- suppressWarnings(fromJSON(paste(readLines(url), collapse = "")))
  list <- list[[gameid]]
  list <- list$data$price_overview$final
  
}