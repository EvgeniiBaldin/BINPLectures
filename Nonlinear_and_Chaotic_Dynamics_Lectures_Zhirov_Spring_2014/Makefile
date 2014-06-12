#
# Сборка лекций
# 

include ../rules.mk

all:
	@echo "Usage: make file.$(VIDEOEXT)"
	@echo "Usage: make clean"
	@echo "Usage: make fullclean"


CHAOS_Zhirov_Lecture01.$(VIDEOEXT): CHAOS_Zhirov_Lecture01.png.$(VIDEOEXT) CHAOS_Zjirov_Lecture_1.1-30-04-2014.mts.$(VIDEOEXT) 
	$(call MERGE,$^,"CHAOS Zhirov O.V. Lecture N 01","NSU 2014")

CHAOS_Zhirov_Lecture02.$(VIDEOEXT): CHAOS_Zhirov_Lecture02.png.$(VIDEOEXT) CHAOS_Zjirov_Lecture_2.1-08-05-2014.mts.$(VIDEOEXT) 
	$(call MERGE,$^,"CHAOS Zhirov O.V. Lecture N 02","NSU 2014")

CHAOS_Zhirov_Lecture03.$(VIDEOEXT): CHAOS_Zhirov_Lecture03.png.$(VIDEOEXT) CHAOS_Zjirov_Lecture_3.1-21-05-2014.mts.$(VIDEOEXT) 
	$(call MERGE,$^,"CHAOS Zhirov O.V. Lecture N 03","NSU 2014")


# Чистка
clean:
	rm -f *.*.$(VIDEOEXT)  *~
# Полная чистка
fullclean: clean
	rm -f *.$(VIDEOEXT)

