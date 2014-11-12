#' Is it Gameday?
#'
#' This function returns TRUE if your NHL team plays today
#' and FALSE otherwise
#'
#' You know the problem: You're in your office writing R code and
#' suddenly have the urge to check whether your NHL team has a game today.
#' Before you know it you just wasted 15 minutes browsing the lastest
#' news on your favorite hockey webpage.
#' Suffer no more! You can now ask R directly, without tempting yourself
#' by firing up your web browser.
#'
#' @param team.name Defaults to "canucks"
#' @return \code{TRUE} if \code{team.name} has an NHL game on \code{date},
#' \code{FALSE} otherwise
#' @keywords misc
#' @note case in \code{team.name} is ignored
#' @export
#' @examples
#' gday()
#' gday("canadiens")
#' gday("Bruins")

gday <- function(team.name="canucks") {
	url <- paste0("http://live.nhle.com/GameData/GCScoreboard/", Sys.Date(), ".jsonp")
	grepl(team.name, getURL(url), ignore.case=TRUE)
}
