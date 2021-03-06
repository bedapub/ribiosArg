% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/parseFuncs.R
\name{parsePairs}
\alias{parsePairs}
\title{Parse key-value pairs from a character string}
\usage{
parsePairs(
  str,
  collapse = ",",
  sep = "=",
  colnames = c("key", "value"),
  trim = TRUE,
  ...
)
}
\arguments{
\item{str}{Character string}

\item{collapse}{Collapse character used in the string}

\item{sep}{Seperator used in the string}

\item{colnames}{Column names of the returned \code{data.frame}}

\item{trim}{Logical, whether additional spaces should be trimmed}

\item{...}{Further parameters passed to \code{\link[ribiosUtils]{trim}} for fine-tuning of trimming}
}
\value{
A \code{data.frame} containing keys and values
}
\description{
The function parses parameters in the form of
 \code{KEY1=VAL1,KEY2=VAL2,KEY3=VAL3} into \code{data.frame}.
}
\details{
If input string is \code{NULL}, the function returns \code{NULL}. This
can be useful in case the parameter is optional and not specified.
}
\examples{

parsePairs("A=3,B=4,C=5", collapse=",", sep="=")
parsePairs("A:3|B:4|C:5", collapse="|", sep=":")

}
\seealso{
\code{\link{parseStrings}}
}
