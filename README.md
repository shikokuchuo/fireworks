
<!-- README.md is generated from README.Rmd. Please edit that file -->

# fireworks

<!-- badges: start -->

[![fireworks status
badge](https://shikokuchuo.r-universe.dev/badges/fireworks?color=42147b)](https://shikokuchuo.r-universe.dev/fireworks)
[![R-CMD-check](https://github.com/shikokuchuo/fireworks/workflows/R-CMD-check/badge.svg)](https://github.com/shikokuchuo/fireworks/actions)
[![codecov](https://codecov.io/gh/shikokuchuo/fireworks/graph/badge.svg)](https://app.codecov.io/gh/shikokuchuo/fireworks)
<!-- badges: end -->

      ________  
     /\firewo \
    /  \ 花 rk \
    \  /  火 s /
     \/_______/

Fireworks for R

A toolbox for hacking on the language.

`fireworks` provides a copy of `Defn.h` from R 4.4.0, allowing packges
linking to it access to internal R source definitions.

These provide, *inter alia*, the ability to directly manipulate a
`SEXPREC` struct.

### Quick Start

1.  Add `fireworks` to your package DESCRIPTION under `LinkingTo:`
2.  Add the line `#include "fireworks.h"` in your C/C++ file below other
    R header includes

The package also includes a couple of demo functions:

``` r
library(fireworks)
```

``` r
x <- fountain()
str(x)
#>  raw [1:108279415934912] c0 8f 1f c4 ...
x[1]
#> [1] c0
x[]
#> Error: cannot allocate vector of size 100843.1 Gb
```

``` r
isS4(x)
#> [1] FALSE
sparkle(x)
isS4(x)
#> [1] TRUE
```

``` r
boom()
#> Error in need_screenshot(x, ...): use of NULL environment is defunct
tryCatch(boom(), error = function(e) TRUE)
#> Error in need_screenshot(x, ...): use of NULL environment is defunct
x <- boom()
#> Error in eval(expr, envir, enclos): attempt to bind a variable to R_UnboundValue

isS4(sparkle(boom()))
#> [1] TRUE
```

### Installation

Install the latest dev build from R-universe:

``` r
install.packages("fireworks", repos = "https://shikokuchuo.r-universe.dev")
```

### Links

◈ fireworks R package: <https://shikokuchuo.net/fireworks/>

–

Please note that this project is released with a [Contributor Code of
Conduct](https://shikokuchuo.net/secretbase/CODE_OF_CONDUCT.html). By
participating in this project you agree to abide by its terms.
