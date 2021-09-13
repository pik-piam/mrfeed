# MadRat feed data package

R package **mrfeed**, version **0.0.7**

[![CRAN status](https://www.r-pkg.org/badges/version/mrfeed)](https://cran.r-project.org/package=mrfeed) [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.3822087.svg)](https://doi.org/10.5281/zenodo.3822087)  [![R build status](https://github.com/pik-piam/mrfeed/workflows/check/badge.svg)](https://github.com/pik-piam/mrfeed/actions) [![codecov](https://codecov.io/gh/pik-piam/mrfeed/branch/master/graph/badge.svg)](https://codecov.io/gh/pik-piam/mrfeed) [![r-universe](https://pik-piam.r-universe.dev/badges/mrfeed)](https://pik-piam.r-universe.dev/ui#builds)

## Purpose and Functionality

Provides feed related data.


## Installation

For installation of the most recent package version an additional repository has to be added in R:

```r
options(repos = c(CRAN = "@CRAN@", pik = "https://rse.pik-potsdam.de/r/packages"))
```
The additional repository can be made available permanently by adding the line above to a file called `.Rprofile` stored in the home folder of your system (`Sys.glob("~")` in R returns the home directory).

After that the most recent version of the package can be installed using `install.packages`:

```r 
install.packages("mrfeed")
```

Package updates can be installed using `update.packages` (make sure that the additional repository has been added before running that command):

```r 
update.packages()
```

## Questions / Problems

In case of questions / problems please contact Isabelle Weindl <weindl@pik-potsdam.de>.

## Citation

To cite package **mrfeed** in publications use:

Weindl I, Baumstark L, Bodirsky B, Steinmetz N, Kreidenweis U, Dietrich J (2021). _mrfeed: MadRat feed data package_. doi: 10.5281/zenodo.3822087 (URL: https://doi.org/10.5281/zenodo.3822087), R package version 0.0.7, <URL: https://github.com/pik-piam/mrfeed>.

A BibTeX entry for LaTeX users is

 ```latex
@Manual{,
  title = {mrfeed: MadRat feed data package},
  author = {Isabelle Weindl and Lavinia Baumstark and Benjamin Leon Bodirsky and Nele Steinmetz and Ulrich Kreidenweis and Jan Philipp Dietrich},
  year = {2021},
  note = {R package version 0.0.7},
  doi = {10.5281/zenodo.3822087},
  url = {https://github.com/pik-piam/mrfeed},
}
```

