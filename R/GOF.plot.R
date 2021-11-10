#' GOF.plot
#'
#'Plots the Goodness of fit for the output of a model of clas `ergm`
#'
#' This function processes the output of unipartite Exponential Random Graphs Models only. 
#' 
#' It does not process bipartite ERGMs model objects nor other types of Exponential random graph models object. 
#' 

#' @param m A model object
#'
#' @return Four Plots displaying the Goodness of Fit
#' @export GoF.plot
#'
#' @examples
#' \dontrun{
#' flo <-SNA4DSData::florentine
#' fflom <- flo$flomarriage
#' flom <- intergraph::asNetwork(fflom)
#' m <- ergm::ergm(flom ~ edges + nodecov("Wealth"))
#'
#' GOF.plot(m)
#' }
GOF.plot <- function(m) {
  
  summary(m)
  
  g <- ergm::gof(m1)
  
  ergm:::plot.gof(g)
}
