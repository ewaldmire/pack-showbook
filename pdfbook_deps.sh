#!/bin/bash

# Create the local texmf tree for LaTeX packages
mkdir -p ~/texmf/tex/latex/everyshi

# Download everyshi.sty from CTAN
curl -L -o ~/texmf/tex/latex/everyshi/everyshi.sty \
    https://mirrors.ctan.org/macros/latex/contrib/everyshi/everyshi.sty

# Update the TeX filename database (so TeX can find it)
texhash ~/texmf

# Verify installation
if kpsewhich everyshi.sty >/dev/null; then
    echo "everyshi.sty installed successfully!"
else
    echo "ERROR: everyshi.sty not found. Check texmf tree."
fi
