.PHONY: clean

%.pdf: %.tex $(DEPENDS)
	latexmk -pdf -pdflatex="pdflatex --shell-escape %O %S" $<
	cp *.pdf /media/sf_ubuntu/

clean:
	rm -rf *.aux *.bbl *.blg *.log *.toc *.snm *.out *.nav tags

