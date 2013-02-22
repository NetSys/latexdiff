#!/bin/sh
P="paper.tex"
perl latexpand $P > flatpaper.tex
svn ci -m ""
