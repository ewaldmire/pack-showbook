#!/bin/bash
# generate_single_song.sh
SONGFILE="$1"
BASENAME=$(basename "$SONGFILE" .tex)
pdflatex -jobname="$BASENAME" "\def\songfile{$SONGFILE} \input{single_song.tex}"
