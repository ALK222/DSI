#!/usr/bin/env bash

cd memoria

xelatex -file-line-error -interaction=nonstopmode memoria.tex

makeglossaries memoria

xelatex -file-line-error -interaction=nonstopmode memoria.tex

xelatex -file-line-error -interaction=nonstopmode memoria.tex
