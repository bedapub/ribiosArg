## Test environments

* Local: Linux Mint 21.2 (x86_64), R 4.5.2
* GitHub Actions:
  - Windows (R release)
  - macOS (R release, R devel)
  - Ubuntu (R release, R oldrel)

## R CMD check results

0 errors | 0 warnings | 0 notes

## Notes for CRAN reviewers

This package provides command-line argument handling for R scripts,
developed at F. Hoffmann-La Roche AG.

Key functionality includes:
- Parsing command-line arguments in BIOS style
- Building stand-alone R programs

The package depends on ribiosUtils (on CRAN) and uses its C headers
via LinkingTo for high-performance argument parsing.
