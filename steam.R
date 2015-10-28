gamelist <- function (key,id = "76561197973625640") {
  warnings()
  'needs seperate key from steam'
  library("rjson", lib.loc = "~/R/win-library/3.2")
  json_file1 <-
    "http://api.steampowered.com/IPlayerService/GetOwnedGames/v0001/?key="
  json_file2 <-  "&steamid="
  json_file3 <- "&include_appinfo=1&format=json"
  json_file <-
    paste(json_file1,key,json_file2,id,json_file3,sep = "")
  suppressWarnings (json_data <- fromJSON(paste(readLines(json_file), collapse = "")))
}