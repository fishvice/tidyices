% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tidy_ca.R
\name{tidy_ca}
\alias{tidy_ca}
\title{tidy_ca}
\usage{
tidy_ca(ca, species, all_variables = FALSE)
}
\arguments{
\item{ca}{datras untidy age dataframe, as obtained via the function
icesDatras::getDATRAS}

\item{species}{dataframe with species code, of the form obtained via function
get_species. Required column names are valid_aphia and latin. If dataframe
not supplied in the function argument, it will be automatically obtained.}

\item{all_variables}{A TRUE/FALSE flag. Should all variables
(default FALSE) or all variable (TRUE) be returned}
}
\value{
A tibble with

\describe{
  \item{id}{haul id}
  \item{latin}{Latin name of species}
  \item{species}{English name of species}
  \item{length}{Length in centimeters}
  \item{sex}{Sex of fish}
  \item{maturity}{The maturity scale}
  \item{age}{Age in years}
  \item{wgt}{Weight in grammes}
  \item{n}{Number of fish}
}
}
\description{
tidy_ca
}
