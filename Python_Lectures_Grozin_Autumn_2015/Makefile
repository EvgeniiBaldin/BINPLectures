#
# Сборка лекций
# 

include ../rules.mk

all:
	@echo "Usage: make file.$(VIDEOEXT)"
	@echo "Usage: make clean"
	@echo "Usage: make fullclean"



Python_Grozin_Lecture02.$(VIDEOEXT): Python_Grozin_Lecture02.png.$(VIDEOEXT) Python_Grozin_02_19.10.15.MTS.$(VIDEOEXT) Python_Grozin_Lecture_afterwords.png.$(VIDEOEXT)
	$(call MERGE,$^,"Python Grozin A.G. Lecture N 02","NSU 2015")

Python_Grozin_Lecture04.$(VIDEOEXT): Python_Grozin_Lecture04.png.$(VIDEOEXT) Python_Grozin_04_02.11.15.MTS.$(VIDEOEXT) Python_Grozin_Lecture_afterwords.png.$(VIDEOEXT)
	$(call MERGE,$^,"Python Grozin A.G. Lecture N 04","NSU 2015")

Python_Grozin_Lecture05.$(VIDEOEXT): Python_Grozin_Lecture05.png.$(VIDEOEXT) Python_Grozin_05_09.11.15.MTS.$(VIDEOEXT) Python_Grozin_Lecture_afterwords.png.$(VIDEOEXT)
	$(call MERGE,$^,"Python Grozin A.G. Lecture N 05","NSU 2015")

Python_Grozin_Lecture06.$(VIDEOEXT): Python_Grozin_Lecture06.png.$(VIDEOEXT) Python_Grozin_06_23.11.15.MTS.$(VIDEOEXT) Python_Grozin_Lecture_afterwords.png.$(VIDEOEXT)
	$(call MERGE,$^,"Python Grozin A.G. Lecture N 06","NSU 2015")

Python_Grozin_Lecture07.$(VIDEOEXT): Python_Grozin_Lecture07.png.$(VIDEOEXT) Python_Grozin_07_30.11.15.MTS.$(VIDEOEXT) Python_Grozin_Lecture_afterwords.png.$(VIDEOEXT)
	$(call MERGE,$^,"Python Grozin A.G. Lecture N 07","NSU 2015")

Python_Grozin_Lecture08.$(VIDEOEXT): Python_Grozin_Lecture08.png.$(VIDEOEXT) Python_Grozin_08_07.12.15.MTS.$(VIDEOEXT) Python_Grozin_Lecture_afterwords.png.$(VIDEOEXT)
	$(call MERGE,$^,"Python Grozin A.G. Lecture N 08","NSU 2015")

Python_Grozin_Lecture09.$(VIDEOEXT): Python_Grozin_Lecture09.png.$(VIDEOEXT) Python_Grozin_09_14.12.15.MTS.$(VIDEOEXT) Python_Grozin_Lecture_afterwords.png.$(VIDEOEXT)
	$(call MERGE,$^,"Python Grozin A.G. Lecture N 09","NSU 2015")





# Чистка
clean:
	rm -f *.*.$(VIDEOEXT)  *~
# Полная чистка
fullclean: clean
	rm -f *.$(VIDEOEXT)

