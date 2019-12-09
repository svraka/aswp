
# aswp

<!-- badges: start -->
<!-- badges: end -->

An opinionated LaTeX template for R Markdown working papers 

## Installation

You can install  aswp from [Github](https://github.com/svraka/aswp) with:

``` r
remotes::install_github("svraka/aswp")
```

## Usage

Set the `output` field in the R Markdown YAML frontmatter:

``` markdown
---
output: aswp::aswp
---

Now write your paper!
```

Then knit and compile like any other R Markdown document. [TinyTeX](https://yihui.org/tinytex/) should automatically take care of the missing LaTeX packages.

This package builds on [bookdown](https://github.com/rstudio/bookdown) to produce a single long-form document. This means chapters are not available but other bookdown features, like numbering and cross-referencing figures/tables/equations are.
