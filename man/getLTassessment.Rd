% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getLTassessment.R
\name{getLTassessment}
\alias{getLTassessment}
\title{Get Litter assessment output}
\usage{
getLTassessment(survey, year, quarter)
}
\arguments{
\item{survey}{the survey acronym, e.g. NS-IBTS.}

\item{year}{the year of the survey, e.g. 2010.}

\item{quarter}{the quarter of the year the survey took place, i.e. 1, 2, 3 or 4.}
}
\value{
A data frame.
}
\description{
Get Litter assessment output by survey, year and quarter. The raw data are also
included in this file.
}
\note{
The \pkg{icesAdvice} package provides \code{findAphia}, a function to look up Aphia species codes.
}
\examples{
\dontrun{
index <- getLTassessment(survey = "NS-IBTS", year = 2002, quarter = 3)
str(index)
}
}
\seealso{
\code{\link{getDATRAS}} supports querying many years and quarters in one function call.

\code{\link{getHHdata}} and \code{\link{getCAdata}} get haul data and
age-based data.

\code{\link{icesDatras-package}} gives an overview of the package.
}
