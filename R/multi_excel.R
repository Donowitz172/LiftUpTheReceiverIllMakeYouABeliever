#' Extract all excel sheets from a file into a list
#'
#' @param file full path including file name
#'
#' @import readxl
#'
#' @return a list
#' @export
#'
#' @examples
#' \dontrun{
#'  multi_excel("..")
#' }

multi_excel <- function(file){

  sheets <- lapply(excel_sheets(file), read_excel, path = file)
  return(sheets)

}
