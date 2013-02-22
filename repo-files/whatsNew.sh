#!/bin/sh
myVersion=`svn info | grep "Revision:" | awk '{print $2}'`
svn up
rm -rf flatpaper*pdf
latexdiff-svn -t UNDERLINE --pdf -r $myVersion flatpaper.tex
rm -rf flatpaper-*.tex
open flatpaper*.pdf &
