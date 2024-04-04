#' Calculate Feed Requirements
#' 
#' A wrapper for \code{\link{calcLivestockProductivity}}, that sets the dimnames as required by the feedmodel
#' 
#' @return LivestockProductivity data
#' @author David Hötten
#' @examples
#' 
#' \dontrun{ 
#' calcOutput("LivestockProductivityWrapper")
#' 
#' }
#' @importFrom luscale rename_dimnames

calcLivestockProductivityWrapper <- function(future) {
  x <- calcOutput("LivestockProductivity", aggregate = FALSE,  future = future)
  mapping <- data.frame(
    old = c("sys_beef", "sys_chicken", "sys_pig", "sys_hen", "sys_dairy"),
    new = c("livst_rum", "livst_chick", "livst_pig", "livst_egg", "livst_milk")
  )
  out <- rename_dimnames(x, dim = 3.1, query = mapping, from = "old", to="new")
  return(list(x = out,
              weight = NULL,
              unit = "see calcLivstProductivity",
              description = "see calcLivstProductivity"))
}
