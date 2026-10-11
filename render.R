# Run from the repository root: Rscript render.R
# Install rmarkdown once if needed: install.packages("rmarkdown")
if (!requireNamespace("rmarkdown", quietly = TRUE)) stop("Install the rmarkdown package first.")
if (!rmarkdown::pandoc_available()) stop("Pandoc is required; RStudio includes it.")
status <- system2(rmarkdown::pandoc_exec(), c("index.Rmd", "--from=markdown", "--to=html5", "--standalone", "--template=template.html", "--output=index.html"))
if (status != 0) stop("Homepage render failed.")
