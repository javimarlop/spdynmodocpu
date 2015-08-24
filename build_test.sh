# symbolic link of extdata when documenting
R CMD build --compact-vignettes='gs+qpdf' spdynmodocpu
R CMD check --as-cran spdynmodocpu_1.0.tar.gz
