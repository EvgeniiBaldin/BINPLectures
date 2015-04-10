#
# Сборка лекций
# 

include ../rules.mk

all:
	@echo "Usage: make file.$(VIDEOEXT)"
	@echo "Usage: make clean"
	@echo "Usage: make fullclean"


AstroPh_Dolgov_Lecture01.$(VIDEOEXT): AstroPh_Dolgov_Lecture01.png.$(VIDEOEXT) AstroPh_Dolgov_Lecture_01.1-06.03.15.MTS.$(VIDEOEXT) AstroPh_Dolgov_Lecture_01.2-06.03.15.MTS.$(VIDEOEXT) AstroPh_Dolgov_Lecture_afterwords-1.png.$(VIDEOEXT)
	$(call MERGE,$^,"AstroPh Dolgov A.D. Lecture N 01","NSU 2015")


AstroPh_Dolgov_Lecture02.$(VIDEOEXT): AstroPh_Dolgov_Lecture02.png.$(VIDEOEXT) AstroPh_Dolgov_Lecture_02.1-13.03.15.MTS.$(VIDEOEXT) AstroPh_Dolgov_Lecture_02.2-13.03.15.MTS.$(VIDEOEXT) AstroPh_Dolgov_Lecture_afterwords-1.png.$(VIDEOEXT)
	$(call MERGE,$^,"AstroPh Dolgov A.D. Lecture N 02","NSU 2015")


AstroPh_Dolgov_Lecture03.$(VIDEOEXT): AstroPh_Dolgov_Lecture03.png.$(VIDEOEXT) AstroPh_Dolgov_Lecture_03.1-20.03.15.MTS.$(VIDEOEXT)  AstroPh_Dolgov_Lecture_03.2-20.03.15.MTS.$(VIDEOEXT) AstroPh_Dolgov_Lecture_03.3-20.03.15.MTS.$(VIDEOEXT) AstroPh_Dolgov_Lecture_03.4-20.03.15.MTS.$(VIDEOEXT) AstroPh_Dolgov_Lecture_03.5-20.03.15.MTS.$(VIDEOEXT) AstroPh_Dolgov_Lecture_afterwords-1.png.$(VIDEOEXT)
	$(call MERGE,$^,"AstroPh Dolgov A.D. Lecture N 03","NSU 2015")


AstroPh_Dolgov_Lecture04.$(VIDEOEXT): AstroPh_Dolgov_Lecture04.png.$(VIDEOEXT) AstroPh_Dolgov_Lecture_04.1-27.03.15.MTS.$(VIDEOEXT) AstroPh_Dolgov_Lecture_04.2-27.03.15.MTS.$(VIDEOEXT) AstroPh_Dolgov_Lecture_04.3-27.03.15.MTS.$(VIDEOEXT)  AstroPh_Dolgov_Lecture_afterwords-1.png.$(VIDEOEXT)
	$(call MERGE,$^,"AstroPh Dolgov A.D. Lecture N 04","NSU 2015")

# Чистка
clean:
	rm -f *.*.$(VIDEOEXT)  *~
# Полная чистка
fullclean: clean
	rm -f *.$(VIDEOEXT)

