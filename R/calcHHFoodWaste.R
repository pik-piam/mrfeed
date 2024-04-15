#' Calculate food waste
#' 
#' Provides aggregated household food waste in the units Mt DM, GE, K,  NR, P and WM.
#' 
#' 
#' @return food waste and corresponding weights as a list of two MAgPIE
#' objects
#' @author Isabelle Weindl, Benjamin Leon Bodirsky
#' @seealso \code{\link{calcOutput}}, \code{\link{calcFoodWasteRecycle}}
#' @examples
#' 
#' \dontrun{ 
#' a <- calcOutput("HHFoodWaste")
#' }
#' @importFrom magclass dimSums
calcHHFoodWaste <- function(){
  mb <- calcOutput("FAOmassbalance", aggregate = FALSE)
  demand <- collapseNames(mb[,,"households"])

  kcalPc <- calcOutput("FoodSupplyPast", product_aggr = TRUE, aggregate = FALSE)[, , "kcal"]
  # waste share: at least 15% and all above 2200 kcal  
  wasteShr <- ((kcalPc > (2200 / 0.85)) * (kcalPc - 2200) +
                (kcalPc <= (2200 / 0.85)) * (kcalPc * 0.15)) / kcalPc
  wasteShr[is.nan(wasteShr)] <- 0.15
  wasteShr <- collapseDim(wasteShr)

  out <- dimSums(demand, dim = 3.1) * wasteShr

  return(list(x = out,
              weight = NULL,
              unit = "Mt dm, ge, k,  nr, p, wm",
              description = "Household food waste")
  )
}