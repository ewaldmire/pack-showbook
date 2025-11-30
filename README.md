# Scout Songbook

This is a Cub Scout Songbook I'm creating 

## Dependencies
I'm using Red Hat Enterprise Linux 9, and these packages are needed to compile:
```
sudo dnf install texlive-latex texlive-collection-fontsrecommended texlive-fancyhdr texlive-epstopdf-pkg -y
```

## Usage:

1. To Generate the entire songbook as a pdf:
```
pdflatex main.tex #1st time to generate initial book without ToC.
pdflatex main.tex #2nd time to generate ToC.
```

2. To Generate a single page sheet (useful for leading the group in "repeat after me" without books)
```
./generate_single_song.sh songs/quartermaster.tex
```
