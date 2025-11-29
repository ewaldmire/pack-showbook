# Scout Songbook

This is a Cub Scout Songbook I'm creating 

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
