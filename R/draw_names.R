#' Function drawing the evolution of multiple given names in France by year
#'
#' @param name_vector vector of names to be drawn
#'
#' @import dplyr
#' @import ggplot2
#' @import ggthemes
#' @import assertthat
#'
#' @return ggplot of names
#' @export
#'
#' @examples
#'
#' draw_names(c("Viktor","Jacques"))

draw_names <- function(name_vector){

  assert_that(is.character(name_vector))

  l <- prenoms::prenoms %>%

    filter(name %in% name_vector) %>%

    group_by(year,name) %>%

    summarize(number_of_people = sum(n)) %>%

    ggplot(aes(x = year,y = number_of_people, color = name)) +

    geom_line() +

    theme_gdocs()

  return(l)

}
