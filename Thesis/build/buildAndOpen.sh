#! /bin/bash

#Build to create all generated files
pdflatex -synctex=1 -interaction=nonstopmode "Masterproef".tex

#Make reference list
bibtex "Masterproef".aux

#Make glossaries
makeglossaries Masterproef

#Build again after generating everyting
pdflatex -synctex=1 -interaction=nonstopmode "Masterproef".tex
pdflatex -synctex=1 -interaction=nonstopmode "Masterproef".tex

#Open the file
open Masterproef.pdf
