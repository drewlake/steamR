

#' Steam Profile
#' 
#' gets steam profile, needs a valid steam api key
#' @export
stmprofile <- function (key,id = "76561197973625640") {
  library("rjson", lib.loc = "~/R/win-library/3.2")
  library("data.table", lib.loc = "~/R/win-library/3.2")
  json_file1 <-
    "http://api.steampowered.com/ISteamUser/GetPlayerSummaries/v0002/?key="
  
  json_file2 <- "&steamids="
  json_file3<- "&format=json"
  json_file <-
    paste(json_file1,key,json_file2,id,json_file3,sep = "")
  
  list <-
    suppressWarnings(fromJSON(paste(readLines(json_file), collapse = "")))

  rbindlist(list$response$players,fill = TRUE)
}