#' Extract all excel sheets from a file into a list
#'
#' @param file full path including file name
#'
#' @import readxl
#' @import assertthat
#'
#' @return a list
#' @export
#'
#' @examples
#' \dontrun{
#'  multi_excel("...xlsx")
#' }

multi_excel <- function(file){

  assert_that(file.exists(file))

  assert_that(is.dir(dirname(file)))

  assert_that(is.readable(file))

  assert_that(has_extension(file,"xlsx"))

  sheets <- lapply(excel_sheets(file), read_excel, path = file)
  return(sheets)

}
