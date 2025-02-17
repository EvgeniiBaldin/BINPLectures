#
# Сборка лекций
# 

include ../rules.mk

all:
	@echo "Usage: make file.$(VIDEOEXT)"
	@echo "Usage: make clean"
	@echo "Usage: make fullclean"

# Lectures 2024

SM_Grabovsky_Lecture01.$(VIDEOEXT): SM_Grabovsky_Lecture01.png.$(VIDEOEXT) StandardModel-Grabovsky-1.1-13.05.24.MTS.$(VIDEOEXT) StandardModel-Grabovsky-1.2-13.05.24.MTS.$(VIDEOEXT) SM_Grabovsky_afterwords.png.$(VIDEOEXT)
	$(call MERGE,$^,"Standard Model Andrei Grabovsky Lecture N 01","NSU 2024")

SM_Grabovsky_Lecture02.$(VIDEOEXT): SM_Grabovsky_Lecture02.png.$(VIDEOEXT) StandardModel-Grabovsky-2-15.05.24.MTS.$(VIDEOEXT) SM_Grabovsky_afterwords.png.$(VIDEOEXT)
	$(call MERGE,$^,"Standard Model Andrei Grabovsky Lecture N 02","NSU 2024")

SM_Grabovsky_Lecture03.$(VIDEOEXT): SM_Grabovsky_Lecture03.png.$(VIDEOEXT) StandardModel-Grabovsky-3-22.05.24.MTS.$(VIDEOEXT) SM_Grabovsky_afterwords.png.$(VIDEOEXT)
	$(call MERGE,$^,"Standard Model Andrei Grabovsky Lecture N 03","NSU 2024")

SM_Grabovsky_Lecture04.$(VIDEOEXT): SM_Grabovsky_Lecture04.png.$(VIDEOEXT) StandardModel-Grabovsky-4-29.05.24.MTS.$(VIDEOEXT) SM_Grabovsky_afterwords.png.$(VIDEOEXT)
	$(call MERGE,$^,"Standard Model Andrei Grabovsky Lecture N 04","NSU 2024")

SM_Grabovsky_Lecture05.$(VIDEOEXT): SM_Grabovsky_Lecture05.png.$(VIDEOEXT) StandardModel-Grabovsky-5-09.12.24.MTS.$(VIDEOEXT) SM_Grabovsky_afterwords.png.$(VIDEOEXT)
	$(call MERGE,$^,"Standard Model Andrei Grabovsky Lecture N 05","NSU 2024")

SM_Grabovsky_Lecture06.$(VIDEOEXT): SM_Grabovsky_Lecture06.png.$(VIDEOEXT) StandardModel-Grabovsky-6-16.12.24.MTS.$(VIDEOEXT) SM_Grabovsky_afterwords.png.$(VIDEOEXT)
	$(call MERGE,$^,"Standard Model Andrei Grabovsky Lecture N 06","NSU 2024")

SM_Grabovsky_Lecture07.$(VIDEOEXT): SM_Grabovsky_Lecture07.png.$(VIDEOEXT) StandardModel-Grabovsky-7-23.12.24.MTS-withcut.MTS.$(VIDEOEXT) SM_Grabovsky_afterwords.png.$(VIDEOEXT)
	$(call MERGE,$^,"Standard Model Andrei Grabovsky Lecture N 07","NSU 2024")



# Чистка
clean:
	rm -f *.*.$(VIDEOEXT)  *~
# Полная чистка
fullclean: clean
	rm -f *.$(VIDEOEXT)

