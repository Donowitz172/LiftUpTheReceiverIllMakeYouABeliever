#' Function drawing the evolution of given names by year for a chosen name
#'
#' @param the_name a character
#' @param the_sex "M" or "F"
#'
#' @return ggplot of the_name
#'
#' @import dplyr
#' @import ggplot2
#' @import ggthemes
#'
#' @export
#'
#' @examples
#' draw_a_name("Viktor","M")
#'
#'

draw_a_name <- function(the_name, the_sex) {

  l <- prenoms::prenoms %>%

    filter(name == the_name, sex == the_sex) %>%

    group_by(year) %>%

    summarise(number_of_people = sum(n)) %>%

    ggplot(aes(x = year, y = number_of_people)) +

    geom_line() +

    ggtitle(paste("number of people named", the_name, " by year"))

  return(l)

}
