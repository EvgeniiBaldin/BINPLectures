#
# Сборка лекций
# 

include ../rules.mk

all:
	@echo "Usage: make file.$(VIDEOEXT)"
	@echo "Usage: make clean"
	@echo "Usage: make fullclean"

History_of_Quantum_Theory_Grozin_Lecture01.$(VIDEOEXT): History_of_Quantum_Theory_Grozin_Lecture01.png.$(VIDEOEXT) History_of_Quantum_Theory_Grozin_01.1-13.09.2018.MTS.$(VIDEOEXT) History_of_Quantum_Theory_Grozin_01.2-13.09.2018.MTS.$(VIDEOEXT) History_of_Quantum_Theory_Grozin_Lecture_afterwords.png.$(VIDEOEXT)
	$(call MERGE,$^,"History of Quantum Theory by Andrey Grozin Lecture N 01","NSU 2018")

History_of_Quantum_Theory_Grozin_Lecture02.$(VIDEOEXT): History_of_Quantum_Theory_Grozin_Lecture02.png.$(VIDEOEXT) History_of_Quantum_Theory_Grozin_02.1-20.09.2018.MTS.$(VIDEOEXT) History_of_Quantum_Theory_Grozin_02.2-20.09.2018.MTS.$(VIDEOEXT) History_of_Quantum_Theory_Grozin_Lecture_afterwords.png.$(VIDEOEXT)
	$(call MERGE,$^,"History of Quantum Theory by Andrey Grozin Lecture N 02","NSU 2018")

History_of_Quantum_Theory_Grozin_Lecture03.$(VIDEOEXT): History_of_Quantum_Theory_Grozin_Lecture03.png.$(VIDEOEXT) History_of_Quantum_Theory_Grozin_03.1-27.09.2018.MTS.$(VIDEOEXT) History_of_Quantum_Theory_Grozin_03.2-27.09.2018.MTS.$(VIDEOEXT)  History_of_Quantum_Theory_Grozin_Lecture_afterwords.png.$(VIDEOEXT)
	$(call MERGE,$^,"History of Quantum Theory by Andrey Grozin Lecture N 03","NSU 2018")

History_of_Quantum_Theory_Grozin_Lecture04.$(VIDEOEXT): History_of_Quantum_Theory_Grozin_Lecture04.png.$(VIDEOEXT) History_of_Quantum_Theory_Grozin_04.1-04.10.2018.MTS.$(VIDEOEXT) History_of_Quantum_Theory_Grozin_04.2-04.10.2018.MTS.$(VIDEOEXT)  History_of_Quantum_Theory_Grozin_Lecture_afterwords.png.$(VIDEOEXT)
	$(call MERGE,$^,"History of Quantum Theory by Andrey Grozin Lecture N 04","NSU 2018")

History_of_Quantum_Theory_Grozin_Lecture05.$(VIDEOEXT): History_of_Quantum_Theory_Grozin_Lecture05.png.$(VIDEOEXT) History_of_Quantum_Theory_Grozin_05.1-11.10.2018.MTS.$(VIDEOEXT) History_of_Quantum_Theory_Grozin_05.2-11.10.2018.MTS.$(VIDEOEXT)  History_of_Quantum_Theory_Grozin_Lecture_afterwords.png.$(VIDEOEXT)
	$(call MERGE,$^,"History of Quantum Theory by Andrey Grozin Lecture N 05","NSU 2018")


History_of_Quantum_Theory_Grozin_Lecture06.$(VIDEOEXT): History_of_Quantum_Theory_Grozin_Lecture06.png.$(VIDEOEXT) History_of_Quantum_Theory_Grozin_06.1-18.10.2018.MTS.$(VIDEOEXT) History_of_Quantum_Theory_Grozin_06.2-18.10.2018.MTS.$(VIDEOEXT)  History_of_Quantum_Theory_Grozin_Lecture_afterwords.png.$(VIDEOEXT)
	$(call MERGE,$^,"History of Quantum Theory by Andrey Grozin Lecture N 06","NSU 2018")


# Чистка
clean:
	rm -f *.*.$(VIDEOEXT)  *~
# Полная чистка
fullclean: clean
	rm -f *.$(VIDEOEXT)

