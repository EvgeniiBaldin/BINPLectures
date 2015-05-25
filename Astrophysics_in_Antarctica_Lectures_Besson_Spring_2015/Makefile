#
# Сборка лекций
# 

include ../rules.mk

all:
	@echo "Usage: make file.$(VIDEOEXT)"
	@echo "Usage: make clean"
	@echo "Usage: make fullclean"





Astrophysics_in_Antarctica_David_Besson_Lecture01.$(VIDEOEXT): Astrophysics_in_Antarctica_David_Besson_Lecture01.png.$(VIDEOEXT) Astrophysics_in_Antarctica_David_Besson_1.1_20.04.15.MTS.$(VIDEOEXT) Astrophysics_in_Antarctica_David_Besson_1.2_20.04.15.MTS.$(VIDEOEXT) Astrophysics_in_Antarctica_David_Besson_Lecture_afterwords.png.$(VIDEOEXT)
	$(call MERGE,$^,"Astrophysics in Antarctica David Besson Lecture N 01","NSU 2015")

Astrophysics_in_Antarctica_David_Besson_Lecture02.$(VIDEOEXT): Astrophysics_in_Antarctica_David_Besson_Lecture02.png.$(VIDEOEXT) Astrophysics_in_Antarctica_David_Besson_2_21.04.15.MTS.$(VIDEOEXT) Astrophysics_in_Antarctica_David_Besson_Lecture_afterwords.png.$(VIDEOEXT)
	$(call MERGE,$^,"Astrophysics in Antarctica David Besson Lecture N 02","NSU 2015")

Astrophysics_in_Antarctica_David_Besson_Lecture03.$(VIDEOEXT): Astrophysics_in_Antarctica_David_Besson_Lecture03.png.$(VIDEOEXT) Astrophysics_in_Antarctica_David_Besson_3_22.04.15.MTS.$(VIDEOEXT) Astrophysics_in_Antarctica_David_Besson_Lecture_afterwords.png.$(VIDEOEXT)
	$(call MERGE,$^,"Astrophysics in Antarctica David Besson Lecture N 03","NSU 2015")


Astrophysics_in_Antarctica_David_Besson_Lecture04.$(VIDEOEXT): Astrophysics_in_Antarctica_David_Besson_Lecture04.png.$(VIDEOEXT) Astrophysics_in_Antarctica_David_Besson_4_23.04.15.MTS.$(VIDEOEXT)  Astrophysics_in_Antarctica_David_Besson_Lecture_afterwords.png.$(VIDEOEXT)
	$(call MERGE,$^,"Astrophysics in Antarctica David Besson Lecture N 04","NSU 2015")

Astrophysics_in_Antarctica_David_Besson_Lecture05.$(VIDEOEXT): Astrophysics_in_Antarctica_David_Besson_Lecture05.png.$(VIDEOEXT) Astrophysics_in_Antarctica_David_Besson_5_24.04.15.MTS.$(VIDEOEXT)  Astrophysics_in_Antarctica_David_Besson_Lecture_afterwords.png.$(VIDEOEXT)
	$(call MERGE,$^,"Astrophysics in Antarctica David Besson Lecture N 05","NSU 2015")


# Чистка
clean:
	rm -f *.*.$(VIDEOEXT)  *~
# Полная чистка
fullclean: clean
	rm -f *.$(VIDEOEXT)

