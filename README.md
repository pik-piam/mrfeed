# MadRat feed data package
#### R package **mrfeed**, version **0.0.2**
[![Travis build status](https://travis-ci.com/pik-piam/mrfeed.svg?branch=master)](https://travis-ci.com/pik-piam/mrfeed) 

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

Weindl I, Baumstark L, Bodirsky B, Steinmetz N, Kreidenweis U, Dietrich J (2020). _mrfeed: MadRat feed data package_.
R package version 0.0.2.

A BibTeX entry for LaTeX users is

 ```latex
@Manual{,
  title = {mrfeed: MadRat feed data package},
  author = {Isabelle Weindl and Lavinia Baumstark and Benjamin Leon Bodirsky and Nele Steinmetz and Ulrich Kreidenweis and Jan Philipp Dietrich},
  year = {2020},
  note = {R package version 0.0.2},
}
```

