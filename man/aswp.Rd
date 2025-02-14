% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/aswp.R
\name{aswp}
\alias{aswp}
\title{An opinionated LaTeX template for R Markdown working papers}
\usage{
aswp(..., toc = FALSE, keep_tex = TRUE)
}
\arguments{
\item{...}{Additional arguments to
\code{\link[bookdown:pdf_document2]{bookdown::pdf_document2()}}}

\item{toc}{\code{TRUE} to include a table of contents in the output}

\item{keep_tex}{Keep the intermediate tex file used in the conversion to PDF}
}
\value{
R Markdown output format to pass to \code{\link[rmarkdown]{render}}
}
\description{
A template suitable for working paperes written in R Markdown. It
  provides usefule defaults and nice typography.
}
\details{
This package currently supports only XeLaTeX.
}
\author{
András Svraka
}
