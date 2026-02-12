pkgname <- "ribiosArg"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
library('ribiosArg')

base::assign(".oldSearch", base::search(), pos = 'CheckExEnv')
base::assign(".old_wd", base::getwd(), pos = 'CheckExEnv')
cleanEx()
nameEx("argGet")
### * argGet

flush(stderr()); flush(stdout())

### Name: argGet
### Title: Parse an argument
### Aliases: argGet

### ** Examples





cleanEx()
nameEx("argGetPos")
### * argGetPos

flush(stderr()); flush(stdout())

### Name: argGetPos
### Title: Parse an argument with the given position
### Aliases: argGetPos

### ** Examples





cleanEx()
nameEx("argParse")
### * argParse

flush(stderr()); flush(stdout())

### Name: argParse
### Title: Parser of command-line parameters in BIOS style
### Aliases: argParse argPresent

### ** Examples





cleanEx()
nameEx("existArg")
### * existArg

flush(stderr()); flush(stdout())

### Name: existArg
### Title: Test if named arguments exists
### Aliases: existArg

### ** Examples

comm <- paste(c("Rscript --vanilla -e", "'", "library(ribiosArg);",
             "existArg(c(\"opt\", \"opt2\", \"opt3\"))", "'",
              "-opt abc -opt3"), collapse=" ")
system(comm)



cleanEx()
nameEx("isDebugging")
### * isDebugging

flush(stderr()); flush(stdout())

### Name: isDebugging
### Title: Test whether the environment is set for debugging
### Aliases: isDebugging

### ** Examples

isDebugging()
unsetDebug()
isDebugging()
setDebug()




cleanEx()
nameEx("makeFactor")
### * makeFactor

flush(stderr()); flush(stdout())

### Name: makeFactor
### Title: Make a factor
### Aliases: makeFactor

### ** Examples

makeFactor(c("A", "B", "C", "C", "A"), levels=LETTERS[3:1])
makeFactor(c("A 1", "B 2", "C 3", "C 3", "A 1"),
    levels=c("A 1", "C 3", "B 2"),
    make.names=TRUE)
makeFactor(c("A 1", "B 2", "C 3", "C 3", "A 1"),
    levels=c("A 1", "C 3", "B 2"),
    make.names=FALSE)
makeFactor(c("A 1", "B 2", "C 3", "C 3", "A 1"),
    levels=c("A 1", "C 3", "B 2"),
    make.names=FALSE, verbose=TRUE)



cleanEx()
nameEx("parseFactor")
### * parseFactor

flush(stderr()); flush(stdout())

### Name: parseFactor
### Title: Parse a character string into factor
### Aliases: parseFactor

### ** Examples

parseFactor("A,B,C,B,A", rlevels="A,B,C")

rgroup <- "A,B,C,D,B,C,A,D,B"
rlevels <- "D,A,B,C"
parseFactor(rgroup, rlevels)

groups <- c("ATest", "Control", "Control", "ATest")
levels <- c("Control", "ATest")
makeFactor(groups, levels)

# if 'groups' is a factor and 'levels' NULL or missing, its levels are respected
groups <- factor(c("B", "C", "A", "D"), levels=c("D","C","A","B"))
makeFactor(groups)





cleanEx()
nameEx("parseNumVec")
### * parseNumVec

flush(stderr()); flush(stdout())

### Name: parseNumVec
### Title: Parse a character string into a numveric vector
### Aliases: parseNumVec

### ** Examples

parseNumVec("3,7,9", expLen=3)



cleanEx()
nameEx("parsePairs")
### * parsePairs

flush(stderr()); flush(stdout())

### Name: parsePairs
### Title: Parse key-value pairs from a character string
### Aliases: parsePairs

### ** Examples


parsePairs("A=3,B=4,C=5", collapse=",", sep="=")
parsePairs("A:3|B:4|C:5", collapse="|", sep=":")




cleanEx()
nameEx("parseStrings")
### * parseStrings

flush(stderr()); flush(stdout())

### Name: parseStrings
### Title: Parse a character string into string vectors
### Aliases: parseStrings

### ** Examples

parseStrings("veni, vidi, vici")
parseStrings("veni, vidi, vici", trim=FALSE)
parseStrings("I came, I saw, I conquered")

# options are trimmed
parseStrings("a,b,\tc,d\n")
# it works also with only one option
parseStrings("a")
# more than one separators
parseStrings("a,b,c;d", collapse=",|;")



cleanEx()
nameEx("scriptInit")
### * scriptInit

flush(stderr()); flush(stdout())

### Name: scriptInit
### Title: Prepare the environment for a script
### Aliases: scriptInit initScript

### ** Examples




cleanEx()
nameEx("scriptName")
### * scriptName

flush(stderr()); flush(stdout())

### Name: scriptName
### Title: Returns the file name of the Rscript being executed
### Aliases: scriptName

### ** Examples





cleanEx()
nameEx("scriptPath")
### * scriptPath

flush(stderr()); flush(stdout())

### Name: scriptPath
### Title: Returns the path of the Rscript being executed
### Aliases: scriptPath

### ** Examples





cleanEx()
nameEx("scriptSkeleton")
### * scriptSkeleton

flush(stderr()); flush(stdout())

### Name: scriptSkeleton
### Title: Generate a Rscript with its skeleton
### Aliases: scriptSkeleton

### ** Examples

scriptSkeleton(file = file.path(tempdir(), "myscript.R"))



### * <FOOTER>
###
cleanEx()
options(digits = 7L)
base::cat("Time elapsed: ", proc.time() - base::get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
