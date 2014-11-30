#
# Сборка лекций
# 

include ../rules.mk

all:
	@echo "Usage: make file.$(VIDEOEXT)"
	@echo "Usage: make clean"
	@echo "Usage: make fullclean"


CHAOS_Zhirov_Lecture01.$(VIDEOEXT): CHAOS_Zhirov_Lecture01.png.$(VIDEOEXT) CHAOS_Zjirov_Lecture_1.1-30-04-2014.mts.$(VIDEOEXT) CHAOS_Zhirov_Lecture_afterwords.png.$(VIDEOEXT)
	$(call MERGE,$^,"CHAOS Zhirov O.V. Lecture N 01","NSU 2014")

CHAOS_Zhirov_Lecture02.$(VIDEOEXT): CHAOS_Zhirov_Lecture02.png.$(VIDEOEXT) CHAOS_Zjirov_Lecture_2.1-08-05-2014.mts.$(VIDEOEXT) CHAOS_Zhirov_Lecture_afterwords.png.$(VIDEOEXT)
	$(call MERGE,$^,"CHAOS Zhirov O.V. Lecture N 02","NSU 2014")

CHAOS_Zhirov_Lecture03.$(VIDEOEXT): CHAOS_Zhirov_Lecture03.png.$(VIDEOEXT) CHAOS_Zjirov_Lecture_3.1-21-05-2014.mts.$(VIDEOEXT) CHAOS_Zhirov_Lecture_afterwords.png.$(VIDEOEXT)
	$(call MERGE,$^,"CHAOS Zhirov O.V. Lecture N 03","NSU 2014")

CHAOS_Zhirov_Lecture04.$(VIDEOEXT): CHAOS_Zhirov_Lecture04.png.$(VIDEOEXT) CHAOS_Zjirov_Lecture_04.1-05-06-2014.mts.$(VIDEOEXT) CHAOS_Zjirov_Lecture_04.2-05-06-2014.mts.$(VIDEOEXT) CHAOS_Zjirov_Lecture_04.3-05-06-2014.mts.$(VIDEOEXT) CHAOS_Zhirov_Lecture_afterwords.png.$(VIDEOEXT)
	$(call MERGE,$^,"CHAOS Zhirov O.V. Lecture N 04","NSU 2014")

CHAOS_Zhirov_Lecture05.$(VIDEOEXT): CHAOS_Zhirov_Lecture05.png.$(VIDEOEXT) CHAOS_Zjirov_Lecture_05.1-11-06-2014.mts.$(VIDEOEXT) CHAOS_Zjirov_Lecture_05.2-11-06-2014.mts.$(VIDEOEXT) CHAOS_Zhirov_Lecture_afterwords.png.$(VIDEOEXT)
	$(call MERGE,$^,"CHAOS Zhirov O.V. Lecture N 05","NSU 2014")

CHAOS_Zhirov_Lecture06.$(VIDEOEXT): CHAOS_Zhirov_Lecture06.png.$(VIDEOEXT) CHAOS_Zjirov_Lecture_6.1-19-06-2014.mts.$(VIDEOEXT) CHAOS_Zjirov_Lecture_6.2-19-06-2014.mts.$(VIDEOEXT) CHAOS_Zjirov_Lecture_6.3-19-06-2014.mts.$(VIDEOEXT) CHAOS_Zjirov_Lecture_6.4-19-06-2014.mts.$(VIDEOEXT) CHAOS_Zhirov_Lecture_afterwords.png.$(VIDEOEXT)
	$(call MERGE,$^,"CHAOS Zhirov O.V. Lecture N 06","NSU 2014")

CHAOS_Zhirov_Lecture07.$(VIDEOEXT): CHAOS_Zhirov_Lecture07.png.$(VIDEOEXT) CHAOS_Zjirov_Lecture_7.1-25-06-2014.mts.$(VIDEOEXT) CHAOS_Zjirov_Lecture_7.2-25-06-2014.mts.$(VIDEOEXT) CHAOS_Zjirov_Lecture_7.3-25-06-2014.mts.$(VIDEOEXT) CHAOS_Zhirov_Lecture_afterwords.png.$(VIDEOEXT)
	$(call MERGE,$^,"CHAOS Zhirov O.V. Lecture N 07","NSU 2014")

CHAOS_Zhirov_Lecture08.$(VIDEOEXT): CHAOS_Zhirov_Lecture08.png.$(VIDEOEXT) CHAOS_Zjirov_Lecture_8.1-26-06-2014.mts.$(VIDEOEXT) CHAOS_Zjirov_Lecture_8.2-26-06-2014.mts.$(VIDEOEXT) CHAOS_Zhirov_Lecture_afterwords.png.$(VIDEOEXT)
	$(call MERGE,$^,"CHAOS Zhirov O.V. Lecture N 08","NSU 2014")

CHAOS_Zhirov_Lecture09.$(VIDEOEXT): CHAOS_Zhirov_Lecture09.png.$(VIDEOEXT) CHAOS_Zjirov_Lecture_9.1-03-07-2014.mts.$(VIDEOEXT) CHAOS_Zjirov_Lecture_9.2-03-07-2014.mts.$(VIDEOEXT) CHAOS_Zjirov_Lecture_9.3-03-07-2014.mts.$(VIDEOEXT) CHAOS_Zhirov_Lecture_afterwords.png.$(VIDEOEXT)
	$(call MERGE,$^,"CHAOS Zhirov O.V. Lecture N 09","NSU 2014")

# Чистка
clean:
	rm -f *.*.$(VIDEOEXT)  *~
# Полная чистка
fullclean: clean
	rm -f *.$(VIDEOEXT)

