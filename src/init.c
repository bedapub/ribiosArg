#include <R_ext/Rdynload.h>
#include <R_ext/Visibility.h>
#include "ribios_arg.h"

static const R_CallMethodDef callMethods[] = {
  CALLMETHOD_DEF(rarg_parse, 5),
  CALLMETHOD_DEF(rarg_isInit, 0),
  CALLMETHOD_DEF(rarg_get, 1),
  CALLMETHOD_DEF(rarg_getPos, 2),
  CALLMETHOD_DEF(rarg_present, 1),
  {NULL, NULL, 0}
};

void attribute_visible R_init_ribiosArg(DllInfo *info) {
  R_registerRoutines(info, NULL, callMethods, NULL, NULL);
  R_useDynamicSymbols(info, FALSE);
  R_forceSymbols(info, TRUE);

  // C functions implemented in ribiosUtils
  usage = (void(*)(char*, ...)) R_GetCCallable("ribiosUtils", "usage");
  strReplace = (void(*)(char**, char*)) R_GetCCallable("ribiosUtils", "strReplace");
  arg_init = (int(*)(int, char*[], char*, char*, void (*usagef)(int))) R_GetCCallable("ribiosUtils", "arg_init");
  arg_isInit = (int(*)(void)) R_GetCCallable("ribiosUtils", "arg_isInit");
  arg_getPos = (char*(*)(char*, int)) R_GetCCallable("ribiosUtils", "arg_getPos");
  arg_present = (int(*)(char*)) R_GetCCallable("ribiosUtils", "arg_present");
  hlr_callocs = (void*(*)(size_t, size_t)) R_GetCCallable("ribiosUtils", "hlr_callocs");
}
