#' Calculate FAO Livestock Primary
#'
#' Provides the FAO Livestock Primary data. No changes to the content have been
#' done, besides changes to the countries list. Yield information has been
#' removed.
#'
#' @return FAO Livestock Primary data and corresonding weights as a list of two
#' MAgPIE objects
#' @author Ulrich Kreidenweis
#' @seealso \code{\link{calcOutput}}, \code{\link{readSource}}
#' @examples
#' \dontrun{
#' calcOutput("LivePrim")
#' }
#'
calcFAOLivePrim <- function() {
  # The following call should not be updated to FAO_online, as it would change
  # the livestock categories. -- patrickr, 2026-01-23
  x <- readSource("FAO", "LivePrim")

  if (any(grepl("+ (Total)", getNames(x, fulldim = TRUE)[[1]], fixed = TRUE))) {
    x <- x[, , "+ (Total)", pmatch = TRUE, invert = TRUE]
  }


  ## Yields currently removed, because it is unclear with which absolute value would have to be used as weight
  if (any(grepl("Yield", getNames(x, fulldim = TRUE)[[2]], fixed = TRUE))) {
    x <- x[, , "Yield", pmatch = TRUE, invert = TRUE]
  }


  return(list(
    x = x,
    weight = NULL,
    unit = "tonnes if not stated otherwise in dimension name",
    description = "FAO Livestock Primary data"
  ))
}

## Yields:

# probably the following weight
# "Yield_(100Mg/An)": "Laying_(Head)"
