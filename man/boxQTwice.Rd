% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/boxQTwice.R
\name{boxQTwice}
\alias{boxQTwice}
\title{Two box plots side-by-side, discharge on sample days, and discharge on all days}
\usage{
boxQTwice(eList, printTitle = TRUE, qUnit = 2, cex = 0.8,
  cex.main = 1.1, logScale = TRUE, cex.axis = 1.1, tcl = 0.5, las = 1,
  tinyPlot = FALSE, customPar = FALSE, ...)
}
\arguments{
\item{eList}{named list with at least the Daily, Sample, and INFO dataframes}

\item{printTitle}{logical variable if TRUE title is printed, if FALSE not printed (this is best for a multi-plot figure)}

\item{qUnit}{object of qUnit class \code{\link{printqUnitCheatSheet}}, or numeric represented the short code, or character representing the descriptive name.}

\item{cex}{numerical value giving the amount by which plotting symbols should be magnified}

\item{cex.main}{magnification to be used for main titles relative to the current setting of cex}

\item{logScale}{logical if TRUE y plotted in log axis. Defaults to TRUE.}

\item{cex.axis}{magnification to be used for axis annotation relative to the current setting of cex}

\item{tcl}{number defaults to 0.5, specifies length of tick marks as fraction of height of a line of text}

\item{las}{numeric in {0,1,2,3}; the style of axis labels, see ?par}

\item{tinyPlot}{logical variable, if TRUE plot is designed to be plotted small as part of a multi-plot figure, default is FALSE.}

\item{customPar}{logical defaults to FALSE. If TRUE, par() should be set by user before calling this function}

\item{\dots}{arbitrary graphical parameters that will be passed to genericEGRETDotPlot function (see ?par for options)}
}
\description{
This function is used to compare the distribution of discharges in the sample data set 
and the discharges in the full daily data set.
Note that discharge is plotted on a logarithmic axis. The data is logged before the statistics are performed
to determine the output of the boxplot.

Data come from named list, which contains a Sample dataframe with the sample data, 
a Daily dataframe with the daily flow data,
and an INFO dataframe with metadata. 

Although there are a lot of optional arguments to this function, most are set to a logical default.
}
\examples{
eList <- Choptank_eList
# Water year:
boxQTwice(eList)
boxQTwice(eList, qUnit=1)
boxQTwice(eList, qUnit='cfs')
# Graphs consisting of Jun-Aug
eList <- setPA(eList, paStart=6,paLong=3)
boxQTwice(eList)
}
\seealso{
\code{\link[graphics]{boxplot}}
}
\keyword{graphics}
\keyword{statistics}
\keyword{water-quality}

