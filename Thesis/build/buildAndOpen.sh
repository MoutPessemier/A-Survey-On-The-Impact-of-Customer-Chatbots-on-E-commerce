#! /bin/bash

pdflatex -synctex=1 -interaction=nonstopmode "Masterproef".tex
bibtex "Masterproef".aux
makeglossaries Masterproef
pdflatex -synctex=1 -interaction=nonstopmode "Masterproef".tex
open Masterproef.pdf
