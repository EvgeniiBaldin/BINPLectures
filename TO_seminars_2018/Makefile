#
# Сборка лекций
# 

include ../rules.mk

all:
	@echo "Usage: make file.$(VIDEOEXT)"
	@echo "Usage: make clean"
	@echo "Usage: make fullclean"

Nedelko_Domin_Wall_networks_as_QCD_vacuum.$(VIDEOEXT): Nedelko_Domin_Wall_networks_as_QCD_vacuum.png.$(VIDEOEXT) S_Nedelko_Domin_Wall_networks_as_QCD_vacuum_8.11.2018.MTS.$(VIDEOEXT) Nedelko_Domin_Wall_networks_as_QCD_vacuum_afterwords.png.$(VIDEOEXT)
	$(call MERGE,$^,"Sergej Nedelko Domin Wall networks as QCD vacuum","BINP 2018")

Zhirov_1812_02485-13_12_2018.$(VIDEOEXT): Zhirov_1812_02485-13_12_2018.png.$(VIDEOEXT) Zhirov_1812.02485-1-13.12.2018.MTS.$(VIDEOEXT) Zhirov_1812_02485-2-13.12.2018.MTS.$(VIDEOEXT) Zhirov_1812_02485-13_12_2018.png.$(VIDEOEXT)
	$(call MERGE,$^,"Zhirov arXiv 1812 02485","BINP 2018")

# Чистка
clean:
	rm -f *.*.$(VIDEOEXT)  *~
# Полная чистка
fullclean: clean
	rm -f *.$(VIDEOEXT)




