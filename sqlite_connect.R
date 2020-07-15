library(RSQLite)
sqlitePath <- "baris.db"
con <- dbConnect(SQLite(), sqlitePath)
dbListTables(con)
dbWriteTable(con, "name_data_turkstat_2019.Rdata", name_data_turkstat_2019)
dbListFields(con, "mtcars")
dbReadTable(con, "mtcars")

name_data_turkstat_2019 <- data.frame(name_data_turkstat_2019)

res <- dbSendQuery(con, "SELECT * FROM mtcars WHERE cyl = 4")
dbFetch(res)
dbClearResult(res)

dbReadTable(con, "mtcars") %>%
  names()