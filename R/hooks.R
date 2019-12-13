hook_aswp <- function() {
  hook_chunk <- knitr::knit_hooks$get("chunk")

  function(x, options) {
    x <- hook_chunk(x, options)
    x <- hook_floatfoot(x, options)

    x
  }
}

hook_floatfoot <- function(x, options) {
  if (!is.null(options$floatfoot)) {
    floatfoot <- paste0("\\\\floatfoot\\{", options$floatfoot, "\\}")

    floats <- knitr::opts_knit$get("floatfoot.envs")
    floats_regex <- paste(floats, collapse = "|")
    float_envs_pattern <- paste0("(\\\\end\\{(", floats_regex, ")\\})")

    x <- gsub(
      pattern = float_envs_pattern,
      replacement = paste(floatfoot, "\\1", collapse = "\\n"),
      x = x
    )
  }

  x
}
