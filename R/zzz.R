.onAttach = function(libname, pkgname) {
  # Replace the default knitr chunk hook
  knitr::knit_hooks$set(chunk = hook_aswp())

  # `knitr` defaults to markdown figures, so we need to tell it to use
  # LaTeX. See <https://github.com/yihui/knitr/issues/1464> and <https://ulyngs.github.io/blog/posts/2019-02-01-how-to-create-your-own-chunk-options-in-r-markdown/>
  knitr::knit_hooks$set(plot = knitr::hook_plot_tex)

  # Evaluate these chunk options after knitting, so results are
  # available for captions and notes.
  evalq(
    knitr::opts_knit$set(eval.after = c("fig.cap", "fig.scap", "fig.subcap", "floatfoot")),
    envir = getNamespace("knitr")
  )

  # Set up float types for which we support adding `floatfoot`s
  evalq(
    knitr::opts_knit$set(floatfoot.envs = c("figure", "table")),
    envir = getNamespace("knitr")
  )
}
