% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dtrs_read.R
\name{dtrs_read}
\alias{dtrs_read}
\title{Reads a local DATRAS table into R session}
\usage{
dtrs_read(type = "HH", surveys, years, quarters, path = "data-raw/datras")
}
\arguments{
\item{type}{The table type, one of "HH", "HL" or "CA"}

\item{surveys}{Character vector containing survey names, e.g. c("NS-IBTS",
ROCKALL").}

\item{years}{What years?}

\item{quarters}{What quarters?}

\item{path}{The directory path of were the data is stored.}
}
\value{
A tibble
}
\description{
It is assumed that the synax for the file
names are survey_year_quarter_xx.rds where xx stands for any of the three
dataframes, "HH", "HL" or "CA". This format is what is returned when using
the dtrs_download function.
}
