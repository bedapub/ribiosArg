.onLoad <- function(libname, pkgname) {
  if (!interactive() && !isDebugging()) {
    allComm <- commandArgs(FALSE)
    isScript <- any(grepl("^--file=", allComm)) || any(grepl("^-f$", allComm))
    if (isScript) {
      tryCatch(
        argParse(optargs = "", reqargs = "", strict = FALSE),
        error = function(e) invisible(NULL)
      )
    }
  }
}
