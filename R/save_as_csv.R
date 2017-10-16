#' Saving a dataframe as csv in a specific directory
#'
#' @param file_name name of the saved file
#' @param df dataframe
#'
#'
#' @return NULL
#' @export
#'
#' @examples
#' save_as_csv(iris, "iris_data")

save_as_csv <- function(df, file_name){

  if(!grepl("*\\.csv$",file_name)) file_name <- paste(file_name,".csv",sep="")
  write.csv(df, file=file_name, row.names = F)
  return()

}
