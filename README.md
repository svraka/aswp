
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

See the [vignette](vignette/aswp.Rmd) for more details and how to set up a template for en entire paper.

