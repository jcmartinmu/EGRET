#' Sets up the period of analysis 
#'
#' Period of analysis is defined by the starting month (paStart) and length in months (paLong). 
#' paStart and paLong are constrained to be integers from 1 to 12. 
#' for example, a water year would be paStart = 10 and paLong = 12. 
#' for example, the winter season, defined by Dec,Jan,Feb would be paStart = 12 and paLong =3.
#'
#' @param eList named list with at least the INFO dataframe
#' @param paStart A numeric value for the starting month of the Period of Analysis, default is 10
#' @param paLong A numeric value for the length of the Period of Analysis in months, default is 12
#' @param window A numeric value for the half-width of a smoothing window for annual streamflow values, default is 20
#' @keywords statistics streamflow
#' @export
#' @return eList named list at least the INFO dataframe, along any other part of the list that was input. 
#' Any of these values can be NA, not all EGRET functions will work with missing parts of the named list eList.
#' @examples
#' eList <- Choptank_eList
#' eList <- setPA(eList, paStart=12, paLong=3)
setPA<-function(eList, paStart=10, paLong=12, window = 20) {
  # The purpose of setPA is just to get the paStart, paLong, and window into the INFO data frame, 
  # so they can be used to run the function makeAnnualSeries
#   if(exists("annualSeries"))
#     rm(annualSeries,envir=sys.frame(-1))
  localINFO <- getInfo(eList)
  localINFO$paStart <- paStart
  localINFO$paLong <- paLong
  localINFO$window <- window
  
  eList$INFO <- localINFO
  
  return(eList)
}