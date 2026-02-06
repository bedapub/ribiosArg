# ribiosArg 1.5.0

* Initial CRAN submission
* Package prepared for CRAN submission with comprehensive documentation
* Depends on ribiosUtils (on CRAN) and uses its C headers via LinkingTo

# ribiosArg 1.1.18 (2015-09-04)

* `rarg_parse`: fixed bug caused by passing SEXP as a size_t object

# ribiosArg 1.1.17 (2015-06-23)

* `argParse` returns invisible NULL in all situations
* `argGetPos` and `argGet` returns default value in debugging mode

# ribiosArg 1.1.16 (2015-06-08)

* `parseNumVec` bug fix: returns failVal when input str is NULL

# ribiosArg 1.1.15 (2015-02-09)

* `makeFactor`: add 'verbose=FALSE' option

# ribiosArg 1.1.14 (2015-01-12)

* `argParse`: works with -e and --args options of R and Rscript

# ribiosArg 1.1.13 (2014-10-07)

* `argParse`: works with latest Rscript

# ribiosArg 1.1.12 (2014-08-15)

* `argParse`: add 'strict=TRUE' option for extra parameter handling

# ribiosArg 1.1.11 (2014-06-23)

* argparse C code: now aware of format strings in die/usage

# ribiosArg 1.1.10 (2014-05-09)

* `parseStrings` and `parsePairs` return NULL for NULL input
* Export `parseFactor` and `makeFactor`

# ribiosArg 1.1.7 (2014-03-11)

* `rarg_get` checks initialization to avoid segmentation error

# ribiosArg 1.1.6 (2013-10-16)

* `argParse` prints command line on parse failure

# ribiosArg 1.1.5 (2013-07-29)

* Add `parseStrings` and `parsePairs`
* ribiosArg now depends on ribiosUtils

# ribiosArg 1.1.4 (2013-07-14)

* `argPresent` returns FALSE if arg_init not called
* `argGet` prints error and returns NULL if arg_init not called

# ribiosArg 1.1.3 (2013-05-15)

* Add 'default' parameter to `argGet` and `argGetPos`
* Move `scriptInit()` to ribiosUtils

# ribiosArg 1.1.2 (2013-01-28)

* `argParse`: optargs and reqargs can be NULL
* Replace log.h module with local mimics

# ribiosArg 1.1.1 (2013-01-23)

* Add `scriptInit` to prepare R for the script

# ribiosArg 1.1.0 (2013-01-04)

* Add BIOS-style command-line parser: `argParser`, `argGet`, `argGetPos`, `argPresent`

# ribiosArg 1.0.5 (2012-01-24)

* Add `RscriptName` function to get current script file name

# ribiosArg 1.0.4 (2011-12-19)

* `parseNumVec` accepts NULL as expLen for variable-length vectors

# ribiosArg 1.0.3 (2011-12-15)

* `getArg` parameter handling improvements
* Add tests folder for consistent behavior testing

# ribiosArg 1.0.2 (2011-10-10)

* `getArg` differentiates options and negative numbers
* `parseNumVec` removes leading and trailing quotes

# ribiosArg 1.0.1 (2011-10-04)

* `parseNumVec` suppresses warnings during string-to-number conversion
