#
# Сборка лекций
# 

include ../rules.mk

all:
	@echo "Usage: make file.$(VIDEOEXT)"
	@echo "Usage: make clean"
	@echo "Usage: make fullclean"


RGeom_Malkovich_Lecture01.$(VIDEOEXT): RGeom_Malkovich_Lecture01.png.$(VIDEOEXT) Riemannian_Geometry_Malkovich_1-1_17.10.2016.MTS.$(VIDEOEXT) Riemannian_Geometry_Malkovich_1-2_17.10.2016.MTS.$(VIDEOEXT) RGeom_Malkovich_Lecture_afterwords.png.$(VIDEOEXT)
	$(call MERGE,$^,"RGeom Evgeny Malkovich Lecture 01","NSU 2016")


RGeom_Malkovich_Lecture02.$(VIDEOEXT): RGeom_Malkovich_Lecture02.png.$(VIDEOEXT) Riemannian_Geometry_Malkovich_2_24.10.2016.MTS.$(VIDEOEXT) RGeom_Malkovich_Lecture_afterwords.png.$(VIDEOEXT)
	$(call MERGE,$^,"RGeom Evgeny Malkovich Lecture 02","NSU 2016")


RGeom_Malkovich_Lecture03.$(VIDEOEXT): RGeom_Malkovich_Lecture03.png.$(VIDEOEXT) Riemannian_Geometry_Malkovich_3-1_31.10.2016.MTS.$(VIDEOEXT)  Riemannian_Geometry_Malkovich_3-2_31.10.2016.MTS.$(VIDEOEXT) RGeom_Malkovich_Lecture_afterwords.png.$(VIDEOEXT)
	$(call MERGE,$^,"RGeom Evgeny Malkovich Lecture 03","NSU 2016")


RGeom_Malkovich_Lecture04.$(VIDEOEXT): RGeom_Malkovich_Lecture04.png.$(VIDEOEXT) Riemannian_Geometry_Malkovich_4.1_07.11.2016.MTS.$(VIDEOEXT) Riemannian_Geometry_Malkovich_4.2_07.11.2016.MTS.$(VIDEOEXT)  RGeom_Malkovich_Lecture_afterwords.png.$(VIDEOEXT)
	$(call MERGE,$^,"RGeom Evgeny Malkovich Lecture 04","NSU 2016")

RGeom_Malkovich_Lecture05.$(VIDEOEXT): RGeom_Malkovich_Lecture05.png.$(VIDEOEXT) Riemannian_Geometry_Malkovich_5-1_14.11.2016.MTS.$(VIDEOEXT) Riemannian_Geometry_Malkovich_5-2_14.11.2016.MTS.$(VIDEOEXT) RGeom_Malkovich_Lecture_afterwords.png.$(VIDEOEXT)
	$(call MERGE,$^,"RGeom Evgeny Malkovich Lecture 05","NSU 2016")

RGeom_Malkovich_Lecture06.$(VIDEOEXT): RGeom_Malkovich_Lecture06.png.$(VIDEOEXT) Riemannian_Geometry_Malkovich_6-1_21.11.2016.MTS.$(VIDEOEXT) Riemannian_Geometry_Malkovich_6-2_21.11.2016.MTS.$(VIDEOEXT) RGeom_Malkovich_Lecture_afterwords.png.$(VIDEOEXT)
	$(call MERGE,$^,"RGeom Evgeny Malkovich Lecture 06","NSU 2016")

# Чистка
clean:
	rm -f *.*.$(VIDEOEXT)  *~
# Полная чистка
fullclean: clean
	rm -f *.$(VIDEOEXT)

