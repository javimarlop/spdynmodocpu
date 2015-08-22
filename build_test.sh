# symbolic link of extdata when documenting
R CMD build --compact-vignettes='gs+qpdf' spdynmod
R CMD check --as-cran spdynmod_1.1.1.tar.gz
