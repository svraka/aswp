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
# inheriting `pdf_document`.
inherit_pdf_document2 <- function(...) {
    fmt <- bookdown::pdf_document2(...)
    fmt$inherits <- "pdf_document2"
    fmt
}

knitr_fun <- function(name) utils::getFromNamespace(name, 'knitr')

output_asis <- knitr_fun('output_asis')
