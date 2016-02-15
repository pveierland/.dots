.PHONY: clean

%.pdf: %.tex $(DEPENDS)
	cp *.tex /media/sf_ubuntu/
	cp ~/permve-ntnu-latex/*.tex /media/sf_ubuntu/
	cd /media/sf_ubuntu/ && pdflatex --shell-escape $<

clean:
	rm -rf *.aux *.bbl *.blg *.log *.toc *.snm *.out *.nav tags

