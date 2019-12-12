
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

This package provides an `aswp()` function which is an R Markdown document format creator. To use it, you need to add `aswp::aswp` to the `output` field in the YAML metadata block of your R Markdown file. The recommended way to use this template is however by

```{r, eval = FALSE}
rmarkdown::draft("paper.Rmd", template = "aswp", package = "aswp")
```

Or use your editor's interface to this function:

  * In RStudio, open a new R Markdown document (**File** → **New File** and choose **R Markdown**) and select this template ("Working Paper") under **From Template**.
  * In Emacs, use `M-x poly-r-rmarkdown-create-from-template` with [Polymode](http://polymode.github.io/), which is also available from the iESS menu.

This provides a basic skeleton for the most important, and non-obvious features and helps setting up a more complex document with references and appendices which are often used in research papers.

Then knit and compile like any other R Markdown document and you'll get a nicely formatted PDF. [TinyTeX](https://yihui.org/tinytex/) should automatically take care of the required LaTeX packages.

## Further details

See the [vignette](vignette/aswp.Rmd) for other functionalities and recommendations.


