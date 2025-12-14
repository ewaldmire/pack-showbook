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
pdflatex songbook_ebook.tex #1st time to generate initial book without ToC.
pdflatex songbook_ebook.tex #2nd time to generate ToC.
```

2. To Generate a single page sheet (useful for leading the group in "repeat after me" without books)
```
./generate_single_song.sh songs/quartermaster.tex
```


## To Generate a "Booklet" in a nerdy linux cli way:


To print as a booklet, we'll use pdfjam and a wrapper from the same author called pdfbook:

https://github.com/pdfjam/pdfjam
https://github.com/pdfjam/pdfjam-extras

RHEL 9 will need these dependencies installed for pdfbook:
```
sudo dnf install texlive-pdfpages texlive-pdflscape -y
```

You'll also need to run the script from this repo called `pdfbook_deps.sh` to add another missing dependency in your homedirectory.

Then, you can run this command to generate a printable booklet format:

```
pdfbook --short-edge ~/path/to/songbook_ebook.pdf  --outfile ~/path/to/new/file/songbook_booklet.pdf

```

## Lazy copy-paste for me to build all the things:
```
export PATH=$HOME/pdfjam-4.2/bin:$PATH
pdflatex songbook_ebook.tex && pdflatex songbook_ebook.tex && ~/code/pdfjam-extras/bin/pdfbook --short-edge ~/code/scout-songbook/songbook_ebook.pdf  --outfile ~/code/scout-songbook/songbook_booklet.pdf && pdflatex songbook_halfpage.tex && pdflatex songbook_halfpage.tex && ~/code/pdfjam-extras/bin/pdfbook --short-edge ~/code/scout-songbook/songbook_halfpage.pdf  --outfile ~/code/scout-songbook/songbook_half_booklet.pdf
```
