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


# Чистка
clean:
	rm -f *.*.$(VIDEOEXT)  *~
# Полная чистка
fullclean: clean
	rm -f *.$(VIDEOEXT)

