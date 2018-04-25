#' Convenient wrapper around logging functionality from the futile.logger package
#'
#' @param ...    Concatenated to form a message
#' @param level  Logging level to use
#'
#' @export
flog <- function (..., level = c("info", "debug", "warn")) {
  require(futile.logger)
  level <- tolower(level)
  level <- match.arg(level)
  flogger <- switch (level, info = flog.info, debug = flog.debug, warn = flog.warn)
  flogger(paste0(...))
}
