#' Saving a dataframe as csv in a specific directory
#'
#' @param file_name name of the saved file
#' @param df dataframe
#'
#' @import assertthat
#'
#' @return NULL
#' @export
#'
#' @examples
#' save_as_csv(iris, "iris_data")

save_as_csv <- function(df, file_name){

  assert_that(is.data.frame(df))

  file_name <- paste(file_name,".csv",sep="")
  write.csv(df, file=file_name, row.names = F)
  return("The csv file has been saved in the project directory")

}
