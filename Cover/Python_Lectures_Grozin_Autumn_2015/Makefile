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

%-1.png %-2.png: %.pdf  
	pdftoppm -png -scale-to-x $(XSIZE) -scale-to-y $(YSIZE) \
                  $< $*



COVERS :=  $(patsubst %.tex,%-2.png,$(wildcard *.tex)) $(patsubst %.tex,%-1.png,$(wildcard *.tex))

covers: $(COVERS)

clean:
	rm -rf *.log *.aux *.synctex.gz *~ auto/

fullclean: clean
	rm -f *.png *.pdf 
