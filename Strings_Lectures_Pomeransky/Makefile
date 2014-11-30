#
# Сборка лекций
# 

include ../rules.mk

all:
	@echo "Usage: make file.$(VIDEOEXT)"
	@echo "Usage: make clean"
	@echo "Usage: make fullclean"


Strings_Pomeransky_Lecture01.$(VIDEOEXT): Strings_Pomeransky_Lecture01.png.$(VIDEOEXT) Strings_Lectures_Pomeransky_01.1-17-09.2014.MTS.$(VIDEOEXT) Strings_Lectures_Pomeransky_01.2-17-09.2014.MTS.$(VIDEOEXT) Strings_Lectures_Pomeransky_01.3-17-09.2014.MTS.$(VIDEOEXT) Strings_Pomeransky_Lecture_afterwords.png.$(VIDEOEXT)
	$(call MERGE,$^,"String theory Pomeransky A.A. Lecture N 01","NSU 2014")

Strings_Pomeransky_Lecture02.$(VIDEOEXT): Strings_Pomeransky_Lecture02.png.$(VIDEOEXT) Strings_Lectures_Pomeransky_02.1-24-09.2014.MTS.$(VIDEOEXT) Strings_Lectures_Pomeransky_02.2-24-09.2014.MTS.$(VIDEOEXT) Strings_Lectures_Pomeransky_02.3-24-09.2014.MTS.$(VIDEOEXT) Strings_Pomeransky_Lecture_afterwords.png.$(VIDEOEXT)
	$(call MERGE,$^,"String theory Pomeransky A.A. Lecture N 02","NSU 2014")

Strings_Pomeransky_Lecture03.$(VIDEOEXT): Strings_Pomeransky_Lecture03.png.$(VIDEOEXT) Strings_Lectures_Pomeransky_03.1-01-10.2014.MTS.$(VIDEOEXT) Strings_Lectures_Pomeransky_03.2-01-10.2014.MTS.$(VIDEOEXT) Strings_Lectures_Pomeransky_03.3-01-10.2014.MTS.$(VIDEOEXT) Strings_Pomeransky_Lecture03.2_18.09.2014.MTS.$(VIDEOEXT)  Strings_Pomeransky_Lecture_afterwords.png.$(VIDEOEXT)
	$(call MERGE,$^,"String theory Pomeransky A.A. Lecture N 03","NSU 2014")

Strings_Pomeransky_Lecture04.$(VIDEOEXT): Strings_Pomeransky_Lecture04.png.$(VIDEOEXT) Strings_Lectures_Pomeransky_04.1-15-10-2014.mts.$(VIDEOEXT) Strings_Lectures_Pomeransky_04.2-15-10-2014.mts.$(VIDEOEXT) Strings_Pomeransky_Lecture_afterwords.png.$(VIDEOEXT)
	$(call MERGE,$^,"String theory Pomeransky A.A. Lecture N 04","NSU 2014")

Strings_Pomeransky_Lecture05.$(VIDEOEXT): Strings_Pomeransky_Lecture05.png.$(VIDEOEXT) Strings_Lectures_Pomeransky_05.1-22-10-2014.mts.$(VIDEOEXT) Strings_Lectures_Pomeransky_05.2-22-10-2014.mts.$(VIDEOEXT) Strings_Pomeransky_Lecture_afterwords.png.$(VIDEOEXT)
	$(call MERGE,$^,"String theory Pomeransky A.A. Lecture N 05","NSU 2014")

# Чистка
clean:
	rm -f *.*.$(VIDEOEXT)  *~
# Полная чистка
fullclean: clean
	rm -f *.$(VIDEOEXT)

