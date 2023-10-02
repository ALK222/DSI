#!/usr/bin/env bash

cd memoria

xelatex -file-line-error -interaction=nonstopmode memoria.tex

makeglossaries memoria

xelatex -file-line-error -interaction=nonstopmode memoria.tex

makeindex -s memoria.ist -o memoria.gls memoria.glo

xelatex -file-line-error -interaction=nonstopmode memoria.tex
