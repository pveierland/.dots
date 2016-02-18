.PHONY: clean

%.pdf: %.tex $(DEPENDS)
	pdflatex --shell_escape $<
	cp *.pdf /media/sf_ubuntu/

clean:
	rm -rf *.aux *.bbl *.blg *.log *.toc *.snm *.out *.nav tags

