% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/concentrationProfile.R
\name{ridges.conProfile}
\alias{ridges.conProfile}
\title{Ridgeline plots for distrProfile objects}
\usage{
\method{ridges}{conProfile}(x, session = NULL, what = c("speed"),
  smooth = TRUE, ...)
}
\arguments{
\item{x}{An object of class \code{conProfile} as returned by \code{\link{concentrationProfile}}.}

\item{session}{A vector of the sessions to be plotted, defaults to all sessions.
Either a character vector with the session names, e.g., c('Session3', 'Session4')
or a numeric vector with the relative position of the session(s).}

\item{what}{Which variables should be plotted?}

\item{smooth}{Logical. Should unsmoothed profiles be smoothed before plotting?}

\item{...}{Currently not used.}
}
\description{
Ridgeline plots for distrProfile objects
}
\examples{
\dontrun{

data("runs", package = "trackeR")
dProfile <- distributionProfile(runs, what = c("speed", "heart.rate"), auto_grid = TRUE)
cProfile <- concentrationProfile(dProfile)
ridges(cProfile, what = "speed")
ridges(cProfile, what = "heart.rate")
}

}
