.PHONY: clean

%.pdf: %.tex $(DEPENDS)
	rubber -f --pdf -s $<
	rubber-info --check $<
	mv *.pdf /media/sf_ubuntu/
	rubber --clean

clean:
	rm -rf *.aux *.bbl *.blg *.log *.toc *.snm *.out *.nav tags

