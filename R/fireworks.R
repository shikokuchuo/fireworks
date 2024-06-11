# Copyright (C) 2024 Hibiki AI Limited <info@hibiki-ai.com>
#
# This file is part of fireworks.
#
# fireworks is free software: you can redistribute it and/or modify it under
# the terms of the GNU General Public License as published by the Free Software
# Foundation, either version 3 of the License, or (at your option) any later
# version.
#
# fireworks is distributed in the hope that it will be useful, but WITHOUT ANY
# WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR
# A PARTICULAR PURPOSE. See the GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License along with
# fireworks. If not, see <https://www.gnu.org/licenses/>.

# fireworks --------------------------------------------------------------------

#' fireworks: Fireworks for R
#'
#' A toolbox for hacking on the language.
#'
#' @encoding UTF-8
#' @author Charlie Gao \email{charlie.gao@@shikokuchuo.net}
#'     (\href{https://orcid.org/0000-0002-0750-061X}{ORCID})
#'
#' @useDynLib fireworks, .registration = TRUE, .fixes = "fireworks"
#'
"_PACKAGE"

#' Boom
#'
#' Errors if attempting to print or assign the return value. Resistant to
#'     handling with \code{tryCatch()}.
#'
#' @return The symbol \code{R_UnboundValue}.
#'
#' @export
#' 
#' @examples
#' isS4(sparkle(boom()))
#'
boom <- function() .Call(fireworks_boom)

#' Fountain
#'
#' Returns a very large (unallocated) raw vector.
#'
#' @return A raw vector.
#'
#' @export
#' 
#' @examples
#' x <- fountain()
#' str(x)
#' x[1]
#'
fountain <- function() .Call(fireworks_fountain)

#' Sparkle
#'
#' Sets the S4 bit on the R object so that \code{isS4()} returns TRUE on it.
#'     
#' @param x an object.
#'
#' @return Invisibly, the supplied object with the \sQuote{S4} bit set (modified
#'     in place).
#'
#' @export
#' 
#' @examples
#' x <- fountain()
#' isS4(x)
#' sparkle(x)
#' isS4(x)
#'
sparkle <- function(x) invisible(.Call(fireworks_sparkle, x))
