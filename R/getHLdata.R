#' length based data
#'
#' Returns length-based information such as measured length, individual counts,
#'   and subfactors of sampled species.
#'
#' @param survey the survey accronym e.g. NS-IBTS, BITS.
#' @param year the numeric year of the survey, e.g. 2010.
#' @param quarter the quarter of the year the survey took place, i.e. 1, 2, 3 or 4.
#'
#'
#' @return A data.frame.
#'
#' @seealso
#' \code{\link{getSurveyList}} returns the acronyms for available surveys.
#'
#' \code{\link{getSurveyYearList}} returns the years available for a given survey.
#'
#' \code{\link{getSurveyYearQuarterList}} returns the quarters available for a given survey and year.
#'
#' \code{\link{icesDatras-package}} gives an overview of the package.
#'
#' @author Colin Millar.
#'
#' @examples
#' # read length data
#' hldata <- getHLdata(survey = "NS-IBTS", year = 2016, quarter = 1)
#' str(hldata)
#'
#' @keywords distribution
#'
#' @export

getHLdata <- function(survey, year, quarter) {
  # Returns length-based information such as measured length, individual counts,
  # and subfactors of sampled species.

  # check survey name
  if (!checkSurveyOK(survey)) return(FALSE)

  # check year
  if (!checkSurveyYearOK(survey, year, checksurvey = FALSE)) return(FALSE)

  # check quarter
  if (!checkSurveyYearQuarterOK(survey, year, quarter, checksurvey = FALSE, checkyear = FALSE)) return(FALSE)

  # read and parse XML from api
  url <-
    sprintf(
      "https://datras.ices.dk/WebServices/DATRASWebService.asmx/getHLdata?survey=%s&year=%i&quarter=%i",
      survey, year, quarter)
  out <- curlDatras(url = url)
  out <- parseDatras(out)

  # return
  out
}
