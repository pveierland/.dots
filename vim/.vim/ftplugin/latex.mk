.PHONY: clean

%.pdf: %.tex $(DEPENDS)
	latexmk -pdf -pdflatex="pdflatex --shell-escape %O %S" $<
	if [ -e /media/sf_ubuntu/ ]; then cp *.pdf /media/sf_ubuntu/; fi;

clean:
	rm -rf *.aux *.bbl *.blg *.log *.toc *.snm *.out *.nav tags

