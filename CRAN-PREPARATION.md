# ribiosArg - CRAN Preparation Notes

**Assessment Date:** 2026-01-24
**Current Version:** 1.4-0
**R CMD check Status:** 1 WARNING, 1 NOTE

## Blocker

**ribiosArg cannot be submitted to CRAN until ribiosUtils is accepted**, because:
- `Depends: ribiosUtils`
- `LinkingTo: ribiosUtils` (uses C headers from ribiosUtils)

## Issues to Fix

### Critical (Must Fix for CRAN)

| Issue | Current | Required |
|-------|---------|----------|
| `Remotes` field | `github::bedapub/ribiosUtils` | Remove entirely (not allowed on CRAN) |
| Title case | "Argument handling for command-line, stand-alone R scripts" | "Argument Handling for Command-Line, Stand-Alone R Scripts" |
| Date field | `2020-08-14` | Update to current date |

### Recommended (Best Practice)

| Issue | Current | Recommended |
|-------|---------|-------------|
| Description | Single sentence | Add 2nd sentence for more context |
| Missing `URL` | Not present | Add `URL: https://github.com/bedapub/ribiosArg` |
| Missing `BugReports` | Not present | Add `BugReports: https://github.com/bedapub/ribiosArg/issues` |
| Missing `Imports` | None | Add `Imports: utils` (for `untar`, `unzip`) |
| Missing `Suggests` | None | Add `Suggests: testthat` |
| Copyright holder | Missing | Add `person("F.Hoffmann-La Roche AG", role="cph")` |
| RoxygenNote | 7.1.1 | Update to 7.3.3 (re-run roxygen2) |

### Already Good

- C code registration (`R_useDynamicSymbols`, `R_forceSymbols`)
- All exports documented
- Tests pass
- `LinkingTo: ribiosUtils` works correctly
- No compiler warnings
- NAMESPACE properly generated
- NEWS file exists

## Proposed DESCRIPTION

```
Package: ribiosArg
Type: Package
Title: Argument Handling for Command-Line, Stand-Alone R Scripts
Version: 1.5.0
Date: 2026-01-24
Authors@R:
  c(person(given = "Jitao David",
           family = "Zhang",
           role = c("aut", "cre", "ctb"),
           email = "jitao_david.zhang@roche.com",
           comment = c(ORCID="0000-0002-3085-0909")),
    person("F.Hoffmann-La Roche AG", role="cph"))
Description: Provides functions to handle command-line arguments for R
    scripting. It enables building stand-alone R programs that accept and
    parse command-line options in BIOS style.
Depends: R (>= 3.4.0), ribiosUtils (>= 1.7.0)
LinkingTo: ribiosUtils
Imports: utils
Suggests: testthat
License: GPL-3
URL: https://github.com/bedapub/ribiosArg
BugReports: https://github.com/bedapub/ribiosArg/issues
Encoding: UTF-8
RoxygenNote: 7.3.3
```

## Other Files to Update

1. **.Rbuildignore** - Add:
   ```
   ^\.github$
   ^\.claude$
   ^CLAUDE\.md$
   ^cran-comments\.md$
   ^CRAN-SUBMISSION$
   ```

2. **GitHub Actions workflow** - Update to match ribiosUtils (uses outdated ubuntu-16.04, old action versions)

3. **Tests** - Consider migrating to testthat framework

4. **Add new files:**
   - `cran-comments.md`

## Estimated Effort

~1-2 hours (after ribiosUtils is on CRAN)
