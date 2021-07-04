

#' Overview of SNA4DS vignettes in a browser
#' 
#' View the list of SNA4DS vignettes in a browser
#' 
#' There are (at least) two ways to access the vignettes in this package.
#' \enumerate{
#'  \item type \code{help(package = "SNA4DS")} or \code{?SNA4DS}. This opens the 
#' help overview of the package. Here, you can click on 
#' \code{ser guides, package vignettes and other documentation}.
#' This gives you the list of vignettes. 
#' They will open inside the RStudio viewer, when you open them.
#'  \item Use \code{get_SNA4DS_vignettes()}. 
#' This opens an overview of available vignettes in your default browser. 
#' When you click on the name of the vignette you want to see, it will 
#' open the vignette in that browser.
#' }
#' 
#' 1. type \code{help(package = "SNA4DS")} or \code{?SNA4DS}. This opens the 
#' help overview of the package. Here, you can click on 
#' \code{ser guides, package vignettes and other documentation}.
#' This gives you the list of vignettes. 
#' They will open inside the RStudio viewer, when you open them.
#' 
#' 1. Use \code{SNA4DS::get_SNA4DS_vignettes()}. 
#' This opens an overview of available vignettes in your default browser. 
#' When you click on the name of the vignette you want to see, it will 
#' open the vignette in that browser.
#'
#' @return nothing
#' @export
#'
#' @examples
open_SNA4DS_vignettes_locally <- function() {
  utils::browseVignettes(package = "SNA4DS")
}