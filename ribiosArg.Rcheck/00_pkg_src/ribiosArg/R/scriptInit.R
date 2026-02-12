#' Prepare the environment for a script
#'
#' This function is called at the beginning of an Rscript, in order to
#' prepare the R environment to run in a script setting.
#'
#' @return No return value, called for side effects.
#'
#' @aliases initScript
#' @export
#' @examples
#' \donttest{
#'   scriptInit()
#' }
scriptInit <- function() {
  old <- options()
  on.exit(options(old))
  if(interactive()) {
    setDebug()
  } else {
    options(error=quote({
      dump.frames(dumpto="ribios.dump", to.file=TRUE, include.GlobalEnv=TRUE)
      quit(save="no", status=1L)
    }))
  }
}
initScript <- scriptInit
