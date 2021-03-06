% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/read.R
\name{readX}
\alias{readX}
\alias{readTCX}
\alias{readGPX}
\alias{readDB3}
\alias{readJSON}
\title{Read a training file in tcx, gpx, db3 or Golden Cheetah's JSON format.}
\usage{
readTCX(file, timezone = "", speedunit = "m_per_s", distanceunit = "m",
  parallel = FALSE, cores = getOption("mc.cores", 2L), ...)

readGPX(file, timezone = "", speedunit = "km_per_h", distanceunit = "km",
  parallel = FALSE, cores = getOption("mc.cores", 2L), ...)

readDB3(file, timezone = "", table = "gps_data", speedunit = "km_per_h",
  distanceunit = "km")

readJSON(file, timezone = "", speedunit = "km_per_h", distanceunit = "km")
}
\arguments{
\item{file}{The path to the file.}

\item{timezone}{The timezone of the observations as passed on to
\code{\link[base]{as.POSIXct}}.  Ignored for JSON files.}

\item{speedunit}{Character string indicating the measurement unit
of the speeds in the container file to be converted into meters
per second. See Details.}

\item{distanceunit}{Character string indicating the measurement
unit of the distance in the container file to be converted into
meters. See Details.}

\item{parallel}{Logical. Should computation be carried out in
parallel? (Not supported on Windows.)}

\item{cores}{Number of cores for parallel computing.}

\item{...}{Currently not used.}

\item{table}{Character string indicating the name of the table with the GPS data in the db3 container file.}
}
\description{
Read a training file in tcx, gpx, db3 or Golden Cheetah's JSON format.
}
\details{
Available options for \code{speedunit} currently are
    \code{km_per_h}, \code{m_per_s}, \code{mi_per_h},
    \code{ft_per_min} and \code{ft_per_s}. The default is
    \code{m_per_s} for TCX files and \code{km_per_h} for db3 and
    Golden Cheetah's json files.  Available options for
    \code{distanceunit} currently are \code{km}, \code{m},
    \code{mi} and \code{ft}. The default is \code{m} for TCX and
    \code{km} for gpx, db3 and Golden Cheetah's json files.

Reading Golden Cheetah's JSON files is experimental.
}
\examples{
\dontrun{
## read raw data
filepath <- system.file("extdata", "2013-06-08-090442.TCX", package = "trackeR")
run <- readTCX(file = filepath, timezone = "GMT")

## turn into trackeRdata object
run <- trackeRdata(run, units = data.frame(variable = c("latitude", "longitude",
    "altitude", "distance", "heart.rate", "speed", "cadence", "power"),
    unit = c("degree", "degree", "m", "m", "bpm", "m_per_s", "steps_per_min", "W"),
    stringsAsFactors = FALSE))

## alternatively
run <- readContainer(filepath, type = "tcx", timezone = "GMT")
}
}
