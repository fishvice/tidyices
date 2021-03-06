% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dtrs_download.R
\name{dtrs_download}
\alias{dtrs_download}
\title{Download and save DATRAS data}
\usage{
dtrs_download(d, record = c("HH", "HL", "CA"), path = "data-raw/datras")
}
\arguments{
\item{d}{A dataframe containing variables survey, year and quarter.}

\item{record}{A vector containin one, tow or all of "HH", "HL" and/or "CA".
The default is c("HH", "HL", "CA") meaning that all three tables will be
downloaded and stored.}

\item{path}{Path to the directory where the data are stored.}
}
\description{
Downloads and stores the DATRAS exchange data as R binary files in a directory
specified by the argument path. For each year, survey and quarter the HH
(haul dataframe), HL (length frequency dataframe) and CA (detail measurment
dataframe) are stored as a separate binary file. The synax for the file
names are survey_year_quarter_xx.rds where xx stands for any of the three
dataframe.
}
