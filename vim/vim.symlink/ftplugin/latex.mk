.PHONY: clean

%.pdf: %.tex $(DEPENDS)
	pdflatex -output-directory=/media/sf_ubuntu --shell-escape $<
	#rubber -f --pdf -s $<
	#rubber-info --check $<
	#mv *.pdf /media/sf_ubuntu/

clean:
	rm -rf *.aux *.bbl *.blg *.log *.toc *.snm *.out *.nav tags

