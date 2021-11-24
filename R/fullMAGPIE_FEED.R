#' fullMAGPIE_FEED
#'
#' Function that produces the complete country data set required for the
#' MAgPIE-FEED model (preprocessing).
#'
#' @param rev data revision which should be used as input (positive numeric).
#' @author Isabelle Weindl, Lavinia Baumstark
#' @seealso
#' \code{\link{readSource}}, \code{\link{getCalculations}}, \code{\link{calcOutput}}
#' @examples
#' \dontrun{
#' fullMAGPIE_FEED()
#' }
#'
fullMAGPIE_FEED <- function(rev = 0) { # nolint

  magYearsPast <- findset("past")

  # time-dependent data:
  calcOutput("LivstProduction",    years = magYearsPast, round = 8, file = "livst_production.csv",  aggregate = FALSE)
  calcOutput("LivstSubProduction", years = magYearsPast, round = 8, file = "livst_sub_production.cs3",
             aggregate = FALSE)

  calcOutput("LivestockProductivity",   years = magYearsPast, round = 8, file = "livestock_productivity.cs3",
             future = FALSE, aggregate = FALSE)
  calcOutput("FeedRequirement", years = magYearsPast, round = 8, file = "feed_req.cs3",      aggregate = FALSE)
  calcOutput("NutrientDensity", years = magYearsPast, round = 8, file = "nutrient_dens.cs3", aggregate = FALSE)

  calcOutput("FAOFeed",             years = magYearsPast, round = 8, file = "FAO_feed.csv",       aggregate = FALSE)
  calcOutput("ProdFoddr",           years = magYearsPast, round = 8, file = "prod_foddr.csv",     aggregate = FALSE)
  calcOutput("FeeduseFoddr",        years = magYearsPast, round = 8, file = "feeduse_foddr.csv",  aggregate = FALSE)
  calcOutput("ResFeedAvailability", years = magYearsPast, round = 8, file = "res_feed_avail.cs3", aggregate = FALSE)
  calcOutput("HHFoodWaste",         years = magYearsPast, round = 8, file = "food_waste.cs3",   aggregate = FALSE)


  # data only available for one time step:
  calcOutput("FoodWasteRecycle",   years = 2000, round = 2, file = "foodwaste_DM_recycle.cs4",   aggregate = FALSE)
  calcOutput("ProdSystRatio_2000", years = 2000, round = 8, file = "prod_system_ratio_2000.cs3", aggregate = FALSE)


  # data that is not time-dependent:
  calcOutput("Attributes", round = 8, file = "product_attributes.cs3", aggregate = FALSE)

}
