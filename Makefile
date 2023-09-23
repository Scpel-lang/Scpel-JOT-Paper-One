.PHONY: all paper tag clean realclean zip

T = jot-latex-template

all: paper clean

paper: paper/scpel_jot_paper_1.pdf

paper/scpel_jot_paper_1.pdf: paper/jot.cls paper/scpel_jot_paper_1.tex paper/latexmkrc paper/figures/*
	cd paper \
		&& latexmk scpel_jot_paper_1

tag:
	git tag v${shell date "+%Y%m%d"}

clean:
	cd paper && latexmk -c scpel_jot_paper_1
	-rm -rf $T $T.zip

realclean: clean
	rm -f paper/scpel_jot_paper_1.pdf

# For the online version

zip : pdf
	-rm -rf $T $T.zip
	mkdir $T
	cd paper; cp -r README.* jot.cls *.bib *.bbl *.tex scpel_jot_paper_1.pdf figures ../$T
	zip -y -r $T.zip $T
