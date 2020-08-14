#ifndef RIBIOS_ARG_H
#define RIBIOS_ARG_H

#ifdef __cplusplus
extern "C" {
#endif

#include <R.h>
#include <Rinternals.h>
#include <R_ext/Rdynload.h>

#define CALLMETHOD_DEF(fun, numArgs) {#fun, (DL_FUNC) &fun, numArgs}

// functions from ribiosUtils
extern void(*usage)(char*, ...);
extern void(*strReplace)(char**, char*);
extern int(*arg_init)(int, char*[], char*, char*, void (*usagef)(int));
extern int(*arg_isInit)(void);
extern char*(*arg_getPos)(char*, int);
extern int(*arg_present)(char*);
extern void*(*hlr_callocs)(size_t, size_t);

extern SEXP rarg_isInit();
extern SEXP rarg_parse(SEXP, SEXP, SEXP, SEXP, SEXP);
extern SEXP rarg_get(SEXP);
extern SEXP rarg_getPos(SEXP, SEXP);
extern SEXP rarg_present(SEXP);

#ifdef __cplusplus
}
#endif

#endif
