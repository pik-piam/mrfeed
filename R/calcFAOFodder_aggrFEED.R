#' Calculate FAO Fodder Crop aggregated to MAgPIE_FEED sectors
#' 
#' Provides the FAOSTAT Fodder data aggregated to three MAgPIE_FEED fodder
#' categories.
#' 
#' 
#' @return FAO fodder data and corresponding weights as a list of two MAgPIE
#' objects
#' @author Isabelle Weindl
#' @seealso \code{\link{calcOutput}}, \code{\link{readSource}}
#' @examples
#' 
#' \dontrun{ 
#' 
#' a <- calcOutput("FAOFodder_aggrFEED")
#' 
#' }
#' @importFrom utils read.csv
#' @importFrom madrat readSource toolGetMapping toolAggregate


calcFAOFodder_aggrFEED <- function() {
  
  # The following call can not be updated to FAO_online for two reasons:
  # 1.) Currently FAO_online does not support the Fodder subtype
  # 2.) FAO and FAO_online have different categories, thus this could potentially
  #     break users of the resulting input data.
  # -- patrickr, 2026-01-23
  data <- readSource("FAO", "Fodder")
  # load sectoral mapping
  aggregation <- toolGetMapping(type = "sectoral",
                                name = "FAOFodder_magpieFEED_mapping.csv",
                                where = "mappingfolder")
  # sectoral aggregation of data  
  data_agg <- toolAggregate(data, rel=aggregation, from="ProductionItem", to="MAgPIE_FEED_items", dim=3.1, partrel = TRUE)
    
  return(list(x=data_agg,
              weight=NULL,
              unit="in tonnes WM, if not specified differently in the dimension name",
              description="FAO fodder data aggregated to MAgPIE_FEED categories")
  )
}
