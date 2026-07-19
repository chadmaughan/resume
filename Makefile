# LaTeX Makefile
#	(on macOS, install BasicTeX with: brew install --cask basictex,
#	 then: sudo tlmgr install fontawesome6 tex-gyre sectsty pdfpages enumitem)
FILE=resume

all: $(FILE).pdf

.PHONY: clean

clean:
	rm -rf *.blg
	rm -rf *.out
	rm -rf *.bbl
	rm -rf *.log
	rm -rf *.ind
	rm -rf *.ilg
	rm -rf *.lot
	rm -rf *.lof
	rm -rf *.idx
	rm -rf *.aux
	rm -rf *.toc

$(FILE).pdf: *.tex
	pdflatex -shell-escape $(FILE).tex
