#
# Сборка лекций
# 

include ../rules.mk

all:
	@echo "Usage: make file.$(VIDEOEXT)"
	@echo "Usage: make clean"
	@echo "Usage: make fullclean"

Grabovsky_equivalence_principle_seminar_01.04.23.$(VIDEOEXT): Grabovsky_equivalence_principle_seminar_01.04.23.png.$(VIDEOEXT) Grabovsky_equivalence_principle_seminar_01.04.23.MTS.$(VIDEOEXT) Grabovsky_equivalence_principle_seminar_01.04.23_afterwords.png.$(VIDEOEXT)
	$(call MERGE,$^,"Andrey Grabovsky Equivalence principle status","BINP 2023")


# Чистка
clean:
	rm -f *.*.$(VIDEOEXT)  *~
# Полная чистка
fullclean: clean
	rm -f *.$(VIDEOEXT)




