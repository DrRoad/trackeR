% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/trackeR.R
\docType{package}
\name{trackeR}
\alias{trackeR}
\alias{trackeR-package}
\title{trackeR: Infrastructure for running and cycling data from GPS-enabled tracking devices}
\description{
trackeR provides infrastructure for handling cycling and running
data from GPS-enabled tracking devices. After extraction and appropriate
manipulation of the training or competition attributes, the data are placed into
session-aware data objects with an S3 class trackeRdata. The information in the
resultant data objects can then be visualised, summarised and analysed through
corresponding flexible and extensible methods.
}
\note{
This work has been supported by the English Institute of Sport
\url{http://www.eis2win.co.uk} and University College London (UCL),
which jointly contributed to the grant that funded Hannah Frick's
Post Doctoral Research Fellowship at UCL between 2014 and 2016 and
a percentage of Ioannis Kosmidis' time. Ioannis Kosmidis has also
been supported by the Alan Turing Institute under the EPSRC grant
EP/N510129/1 (Turing award number TU/B/000082). The support of the
aforementioned organisations is greatly acknowledged.

The trackeR dashboard \code{\link{trackeR_app}} has been designed
and developed by Robin Hornak and Ioannis Kosmidis, while Robin
Hornak was completing his undergraduate research project in the
Department of Statistical Science, University College London under
the supervision of Ioannis Kosmidis.
}
\section{Note}{


Core facilities in the trackeR package, including reading functions
(see \code{\link{readX}}), data pre-processing strategies (see
\code{\link{trackeRdata}}), and calculation of concentration and
distribution profiles (see \code{\link{distributionProfile}} and
\code{\link{concentrationProfile}}) are based on un-packaged R code
that was developed by Ioannis Kosmidis for the requirements of the
analyses in Kosmidis & Passfield (2015).
}

\references{
Frick, H., Kosmidis, I. (2017). trackeR: Infrastructure for Running and Cycling Data from GPS-Enabled Tracking Devices in R. \emph{Journal of Statistical Software}, \bold{82}(7), 1--29. doi:10.18637/jss.v082.i07
Kosmidis, I., and Passfield, L. (2015). Linking the Performance of
    Endurance Runners to Training and Physiological Effects via Multi-Resolution
    Elastic Net. \emph{ArXiv e-print} arXiv:1506.01388.
}
