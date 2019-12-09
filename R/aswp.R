#' An opinionated LaTeX template for R Markdown working papers
#'
#' A template suitable for working paperes written in R Markdown. It
#'   provides usefule defaults and nice typography.
#'
#' @inheritParams rmarkdown::pdf_document
#' @param ... Additional arguments to
#'   \code{\link[bookdown:pdf_document2]{bookdown::pdf_document2()}}
#' @param citation_package The LaTeX package to process citations,
#'   \code{natbib} or \code{biblatex}. Use \code{none} if neither
#'   package is to be used. This format defaults to \code{biblatex}.
#'
#' @details This package currently supports only XeLaTeX.
#' @inherit rmarkdown::pdf_document return
#'
#' @author András Svraka
#' @export
aswp <- function(...,
                 toc = FALSE,
                 keep_tex = TRUE,
                 citation_package = "biblatex") {
  template <- system.file("rmarkdown", "templates", "aswp", "resources", "template.tex",
                          package = "aswp")

  base <- inherit_pdf_document2(...,
                                toc = toc,
                                template = template,
                                keep_tex = keep_tex,
                                latex_engine = "xelatex",
                                citation_package = citation_package)

  base
}

# Call `bookdown::pdf_document2` and mark the return value as
# inheriting `pdf_document2`.
inherit_pdf_document2 <- function(...) {
    fmt <- bookdown::pdf_document2(...)
    fmt$inherits <- "pdf_document2"
    fmt
}

knitr_fun <- function(name) utils::getFromNamespace(name, 'knitr')

output_asis <- knitr_fun('output_asis')
