library(ribiosArg)

# Ensure argPresent returns FALSE (not error) without argParse
res <- argPresent("nonexistent")
stopifnot(identical(res, FALSE))

# Ensure argGet returns default without argParse
res2 <- argGet("nonexistent", default = "mydefault")
stopifnot(identical(res2, "mydefault"))

# argGetPos returns default
res3 <- argGetPos("nonexistent", ind = 1L, default = 42)
stopifnot(identical(res3, 42))
