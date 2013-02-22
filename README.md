latexdiff
=========

latexdiff (http://www.ctan.org/pkg/latexdiff) is a set of Perl scripts that produce a tex file where differences are highlighted, and
colored. While latexdiff itself is pretty good, it is hard to integrate it into the process of writing a paper. These are a series of files
based on (or copied wholesale) from what Brighten and Ankit at UIUC use (this is for SVN but a similar set of scripts for git should not be
much harder).

Steps to use:
1. Copy files in bin/ to somewhere on your PATH.
2. Copy files in repo-files to you repository. Open putsvn.sh and change the second line to use the appropriate filename.
3. Run putsvn.sh, it will generate a new file flatpaper.tex, svn add flatpaper.tex, and run putsvn.sh again.
4. From here on out use ./putsvn.sh in place of svn commit, and ./whatsNew.sh in place of svn up. ./whatsNew.sh will open the diffed PDF file.
5. One can also automate some of this using SVN pre-commit hooks.
