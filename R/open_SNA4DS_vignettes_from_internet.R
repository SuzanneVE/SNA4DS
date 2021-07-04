#' Open a SNA4DS vignette from the internet
#'
#' Open a SNA4DS vignette using an active internet connection
#'
#' Shows a list of currently available online vignettes for the #' \code{SNA4DS} package.
#' The user can pick the preferred vignette by entering the number that corresponds
#' to the preferred vignette. The vignette will then open in the user's default
#' web browser.
#' 
#' \emph{NOTE: this requires an active internet connection.}
#'
#' When \code{graphics} is \code{TRUE}, a graphical choice menu is shown. If that
#' is not preferred, or if the user's machine lacks the graphical tools needed,
#' setting \code{graphics} to \code{FALSE} will show the list of vignettes in the
#' R console.
#'
#' @param graphics logical, should the list of options be shown as a clickable
#' graphical menu?
#'
#' @return nothing
#' @export
#' @examples
#' \dontrun{
#' open_SNA4DS_vignettes_from_internet()
#' }
open_SNA4DS_vignettes_from_internet <- function(graphics = TRUE) {
  if (!is.logical(graphics)) stop("You need to set 'graphics' to TRUE or FALSE only (without parentheses)")
  all_vignettes <- data.frame(
    matrix(c(
    "A half hour to learn R", "http://karolis.koncevicius.lt/posts/a_half_hour_to_learn_r", 
    "SNA4DS", "https://github.com/SNAnalyst/SNA4DS"
    ), ncol = 2, byrow = TRUE
    )) |> 
    set_colnames(c("title", "url"))
  
  perform <- glue::glue("browseURL('{vignette}')", vignette = all_vignettes$url)
  
  cat("\n\nPlease pick which vignette you want to open, it will show in your default browser.\n")
  cat("The following vignettes are currently available to pick from:\n")
  pick <- utils::menu(all_vignettes$title, graphics = graphics)
  glue::identity_transformer(perform[pick], .GlobalEnv)
  invisible()
}




set_colnames <- function (x, value) {
  if (is.data.frame(x)) {
    names(x) <- value
  }
  else {
    dn <- dimnames(x)
    if (is.null(dn)) {
      if (is.null(value)) 
        return(x)
      if ((nd <- length(dim(x))) < 2L) 
        stop("attempt to set 'colnames' on an object with less than two dimensions")
      dn <- vector("list", nd)
    }
    if (length(dn) < 2L) 
      stop("attempt to set 'colnames' on an object with less than two dimensions")
    if (is.null(value)) 
      dn[2L] <- list(NULL)
    else dn[[2L]] <- value
    dimnames(x) <- dn
  }
  x
}
