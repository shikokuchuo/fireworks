// Copyright (C) 2024 Hibiki AI Limited <info@hibiki-ai.com>
//
// This file is part of fireworks.
//
// fireworks is free software: you can redistribute it and/or modify it under
// the terms of the GNU General Public License as published by the Free Software
// Foundation, either version 3 of the License, or (at your option) any later
// version.
//
// fireworks is distributed in the hope that it will be useful, but WITHOUT ANY
// WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR
// A PARTICULAR PURPOSE. See the GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License along with
// fireworks. If not, see <https://www.gnu.org/licenses/>.

// fireworks -------------------------------------------------------------------

#define R_NO_REMAP
#define STRICT_R_HEADERS
#include "fireworks.h"

SEXP _boom(void) {
  return R_UnboundValue;
}

SEXP _fountain(void) {
  return Rf_allocSExp(RAWSXP);
}

SEXP _sparkle(SEXP x) {
  SET_S4_OBJECT(x);
  return x;
}

static const R_CallMethodDef callMethods[] = {
  {"_boom", (DL_FUNC) &_boom, 0},
  {"_fountain", (DL_FUNC) &_fountain, 0},
  {"_sparkle", (DL_FUNC) &_sparkle, 1},
  {NULL, NULL, 0}
};

void attribute_visible R_init_fireworks(DllInfo* dll) {
  R_registerRoutines(dll, NULL, callMethods, NULL, NULL);
  R_useDynamicSymbols(dll, FALSE);
  R_forceSymbols(dll, TRUE);
}
