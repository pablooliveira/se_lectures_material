NAME=se_lecture3
IMAGES = cc-logo.pdf Iterator2.1 Decorator.1 DecoratorExample.1 

%.1: %.mp
	mpost $<
%.pdf: %.svg
	#convert $< $@
	inkscape --export-pdf=$@ $<
all: $(IMAGES)
	pdflatex $(NAME).tex

clean:
	rm -rf auto *.lst *.log *.d *.aux *.nav *.out *.snm *.toc *.dvi *.vrb *.xmpi $(NAME).pdf $(IMAGES)	
