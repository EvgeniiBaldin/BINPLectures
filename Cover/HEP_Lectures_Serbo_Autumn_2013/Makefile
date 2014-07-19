#
# Сборка заставок
# 

include ../../rules.mk

all:
	@echo "Usage: make covers"
	@echo "Usage: make cover.png"
	@echo "Usage: make cover.pdf"
	@echo "Usage: make clean"
	@echo "Usage: make fullclean"

%.pdf: %.tex ../NSU-logo.png 
	pdflatex $<

%.png: %.pdf  
	pdftoppm -png -scale-to-x $(XSIZE) -scale-to-y $(YSIZE) \
                 -singlefile $< $<
	mv $<.png $@

COVERS := $(patsubst %.tex,%.png,$(wildcard *.tex))

covers: $(COVERS)

clean:
	rm -rf *.log *.aux *.synctex.gz *~ auto/

fullclean: clean
	rm -f *.png *.pdf 