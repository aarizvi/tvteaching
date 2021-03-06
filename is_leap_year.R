#' Function that determines if a year is a leap year or not
#' @param year numeric vector
#'
#' @return logical vector
#' @examples
#' is_leap_year(1996)
#' is_leap_year(c(1996, 1997))
#' @import stats
#' @export

is_leap_year <- function(year){
    # body function
    condition1 <- year %% 4 == 0
    condition2 <- year %% 100 != 0
    condition3 <- year %% 400 == 0
    logical_answer <- condition1 & (condition2 | condition3)
    return(logical_answer)

}
