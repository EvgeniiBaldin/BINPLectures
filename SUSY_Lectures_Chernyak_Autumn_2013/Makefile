#
# Сборка лекций
# 

include ../rules.mk

all:
	@echo "Usage: make file.$(VIDEOEXT)"
	@echo "Usage: make clean"
	@echo "Usage: make fullclean"


SUSY_Chernyak_Lecture19.$(VIDEOEXT): SUSY_Chernyak_Lecture19.png.$(VIDEOEXT) SUSY_Chernyak_Lecture19.1_30.10.2013.mts.$(VIDEOEXT) 
	$(call MERGE,$^,"SUSY Chernyak V.L. Lecture N 19","NSU 2013")

SUSY_Chernyak_Lecture20.$(VIDEOEXT): SUSY_Chernyak_Lecture20.png.$(VIDEOEXT) SUSY_Chernyak_Lecture20.1_10.11.2013.mts.$(VIDEOEXT) 
	$(call MERGE,$^,"SUSY Chernyak V.L. Lecture N 20","NSU 2013")

SUSY_Chernyak_Lecture21.$(VIDEOEXT): SUSY_Chernyak_Lecture21.png.$(VIDEOEXT) SUSY_Chernyak_Lecture21.1_15.11.2013.mts.$(VIDEOEXT) SUSY_Chernyak_Lecture21.2_15.11.2013.mts.$(VIDEOEXT) 
	$(call MERGE,$^,"SUSY Chernyak V.L. Lecture N 21","NSU 2013")

SUSY_Chernyak_Lecture22.$(VIDEOEXT): SUSY_Chernyak_Lecture22.png.$(VIDEOEXT) SUSY_Chernyak_Lecture22.1_20.11.2013.mts.$(VIDEOEXT) SUSY_Chernyak_Lecture22.2_20.11.2013.mts.$(VIDEOEXT) 
	$(call MERGE,$^,"SUSY Chernyak V.L. Lecture N 22","NSU 2013")

SUSY_Chernyak_Lecture23.$(VIDEOEXT): SUSY_Chernyak_Lecture23.png.$(VIDEOEXT) SUSY_Chernyak_Lecture23.1_04.12.2013.mts.$(VIDEOEXT) 
	$(call MERGE,$^,"SUSY Chernyak V.L. Lecture N 23","NSU 2013")

SUSY_Chernyak_Lecture24.$(VIDEOEXT): SUSY_Chernyak_Lecture24.png.$(VIDEOEXT) SUSY_Chernyak_Lecture24.1_11.12.2013.mts.$(VIDEOEXT)  
	$(call MERGE,$^,"SUSY Chernyak V.L. Lecture N 24","NSU 2013")

SUSY_Chernyak_Lecture25.$(VIDEOEXT): SUSY_Chernyak_Lecture25.png.$(VIDEOEXT) SUSY_Chernyak_Lecture25.1_18.12.2013.mts.$(VIDEOEXT) SUSY_Chernyak_Lecture25.2_18.12.2013.mts.$(VIDEOEXT) 
	$(call MERGE,$^,"SUSY Chernyak V.L. Lecture N 25","NSU 2013")

# Чистка
clean:
	rm -f *.*.$(VIDEOEXT)  *~
# Полная чистка
fullclean: clean
	rm -f *.$(VIDEOEXT)

