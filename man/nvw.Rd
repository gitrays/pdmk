% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nvm.R
\name{nvw}
\alias{nvw}
\title{Generates solution to detects urgency of choices (either choices are need or wants)}
\usage{
nvw(x)
}
\arguments{
\item{x}{The adjacency matrix with names for choices in columns. Further each element the matrix can have zeros or ones and diagonals must be zeros.}
}
\value{
The function will return a choice network graph along with coefficients for need, wants, overall weightage, diameter, average length and trasitivity of choices.
}
\description{
This function will generate a adjacency table/graph of the choices along with generates coefficients of "need" choice and "want" choice along with the degree of network (which gives weighage to choice options).
}

