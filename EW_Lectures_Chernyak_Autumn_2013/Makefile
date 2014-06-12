#
# Сборка лекций
# 

include ../rules.mk

all:
	@echo "Usage: make file.$(VIDEOEXT)"
	@echo "Usage: make clean"
	@echo "Usage: make fullclean"


EW_Chernyak_Lecture01.$(VIDEOEXT): EW_Chernyak_Lecture01.png.$(VIDEOEXT) EW_Chernyak_Lecture01.1_13.09.2013.mts.$(VIDEOEXT) EW_Chernyak_Lecture01.2_13.09.2013.mts.$(VIDEOEXT)
	$(call MERGE,$^,"EW Chernyak V.L. Lecture N 01","NSU 2013")

EW_Chernyak_Lecture02.$(VIDEOEXT): EW_Chernyak_Lecture02.png.$(VIDEOEXT) EW_Chernyak_Lecture02.1_13.09.2013.mts.$(VIDEOEXT) EW_Chernyak_Lecture02.2_13.09.2013.mts.$(VIDEOEXT)
	$(call MERGE,$^,"EW Chernyak V.L. Lecture N 02","NSU 2013")

EW_Chernyak_Lecture03.$(VIDEOEXT): EW_Chernyak_Lecture03.png.$(VIDEOEXT) EW_Chernyak_Lecture03.1_20.09.2013.mts.$(VIDEOEXT) 
	$(call MERGE,$^,"EW Chernyak V.L. Lecture N 03","NSU 2013")

EW_Chernyak_Lecture04.$(VIDEOEXT): EW_Chernyak_Lecture04.png.$(VIDEOEXT) EW_Chernyak_Lecture04.1_27.09.2013.mts.$(VIDEOEXT) EW_Chernyak_Lecture04.2_27.09.2013.mts.$(VIDEOEXT)
	$(call MERGE,$^,"EW Chernyak V.L. Lecture N 04","NSU 2013")

EW_Chernyak_Lecture05.$(VIDEOEXT): EW_Chernyak_Lecture05.png.$(VIDEOEXT) EW_Chernyak_Lecture05.1_04.10.2013.mts.$(VIDEOEXT) EW_Chernyak_Lecture05.2_04.10.2013.mts.$(VIDEOEXT)
	$(call MERGE,$^,"EW Chernyak V.L. Lecture N 05","NSU 2013")

EW_Chernyak_Lecture06.$(VIDEOEXT): EW_Chernyak_Lecture06.png.$(VIDEOEXT) EW_Chernyak_Lecture06.1_10.10.2013.mts.$(VIDEOEXT) 
	$(call MERGE,$^,"EW Chernyak V.L. Lecture N 06","NSU 2013")

EW_Chernyak_Lecture07.$(VIDEOEXT): EW_Chernyak_Lecture07.png.$(VIDEOEXT) EW_Chernyak_Lecture07.1_18.10.2013.mts.$(VIDEOEXT) 
	$(call MERGE,$^,"EW Chernyak V.L. Lecture N 07","NSU 2013")

EW_Chernyak_Lecture08.$(VIDEOEXT): EW_Chernyak_Lecture08.png.$(VIDEOEXT) EW_Chernyak_Lecture08.1_25.10.2013.mts.$(VIDEOEXT) EW_Chernyak_Lecture08.2_25.10.2013.mts.$(VIDEOEXT)
	$(call MERGE,$^,"EW Chernyak V.L. Lecture N 08","NSU 2013")

EW_Chernyak_Lecture09.$(VIDEOEXT): EW_Chernyak_Lecture09.png.$(VIDEOEXT) EW_Chernyak_Lecture09.1_01.11.2013.mts.$(VIDEOEXT) 
	$(call MERGE,$^,"EW Chernyak V.L. Lecture N 09","NSU 2013")

EW_Chernyak_Lecture10.$(VIDEOEXT): EW_Chernyak_Lecture10.png.$(VIDEOEXT) EW_Chernyak_Lecture10.1_08.11.2013.mts.$(VIDEOEXT)
	$(call MERGE,$^,"EW Chernyak V.L. Lecture N 10","NSU 2013")

EW_Chernyak_Lecture11.$(VIDEOEXT): EW_Chernyak_Lecture11.png.$(VIDEOEXT) EW_Chernyak_Lecture11.1_15.11.2013.mts.$(VIDEOEXT) 
	$(call MERGE,$^,"EW Chernyak V.L. Lecture N 11","NSU 2013")

EW_Chernyak_Lecture12.$(VIDEOEXT): EW_Chernyak_Lecture12.png.$(VIDEOEXT) EW_Chernyak_Lecture12.1_22.11.2013.mts.$(VIDEOEXT) 
	$(call MERGE,$^,"EW Chernyak V.L. Lecture N 12","NSU 2013")

EW_Chernyak_Lecture13.$(VIDEOEXT): EW_Chernyak_Lecture13.png.$(VIDEOEXT) EW_Chernyak_Lecture13.1_29.11.2013.mts.$(VIDEOEXT) 
	$(call MERGE,$^,"EW Chernyak V.L. Lecture N 13","NSU 2013")

EW_Chernyak_Lecture14.$(VIDEOEXT): EW_Chernyak_Lecture14.png.$(VIDEOEXT) EW_Chernyak_Lecture14.1_06.12.2013.mts.$(VIDEOEXT) 
	$(call MERGE,$^,"EW Chernyak V.L. Lecture N 14","NSU 2013")

EW_Chernyak_Lecture15.$(VIDEOEXT): EW_Chernyak_Lecture15.png.$(VIDEOEXT) EW_Chernyak_Lecture15.1_13.12.2013.mts.$(VIDEOEXT) 
	$(call MERGE,$^,"EW Chernyak V.L. Lecture N 15","NSU 2013")

EW_Chernyak_Lecture16.$(VIDEOEXT): EW_Chernyak_Lecture16.png.$(VIDEOEXT) EW_Chernyak_Lecture16.1_20.12.2013.mts.$(VIDEOEXT) EW_Chernyak_Lecture16.2_20.12.2013.mts.$(VIDEOEXT) 
	$(call MERGE,$^,"EW Chernyak V.L. Lecture N 16","NSU 2013")

EW_Chernyak_Lecture17.$(VIDEOEXT): EW_Chernyak_Lecture17.png.$(VIDEOEXT) EW_Chernyak_Lecture17.1_27.12.2013.mts.$(VIDEOEXT) 
	$(call MERGE,$^,"EW Chernyak V.L. Lecture N 17","NSU 2013")

# Чистка
clean:
	rm -f *.*.$(VIDEOEXT)  *~
# Полная чистка
fullclean: clean
	rm -f *.$(VIDEOEXT)

