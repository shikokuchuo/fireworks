library(fireworks)
test <- function(x) invisible(x == TRUE || stop("statement is not TRUE"))

test(is.symbol(invisible(boom())))
test(is.raw(fountain()))
test(isS4(sparkle("vector")))
