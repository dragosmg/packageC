.onLoad <- function(libname, pkgname) {
  repos = getOption("repos")
  repos["Internal CRAN"] = "https://dragosmg.github.io/internal-cran"
  options(repos = repos)
  invisible(repos)
}
