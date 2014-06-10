#
# Сборка заставок
# 

include ../../rules.mk

all:
	@echo "run: make picture.png"

%.pdf: %.tex ../NSU-logo.png 
	pdflatex $<

%.png: %.pdf  
	pdftoppm -png -scale-to-x $(XSIZE) -scale-to-y $(YSIZE) \
                 -singlefile $< $<
	mv $<.png $@

clean:
	rm *.png *.pdf *.log *.aux *.synctex.gz *~