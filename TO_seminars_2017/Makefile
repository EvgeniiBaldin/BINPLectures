#
# Сборка лекций
# 

include ../rules.mk

all:
	@echo "Usage: make file.$(VIDEOEXT)"
	@echo "Usage: make clean"
	@echo "Usage: make fullclean"

Shepelyansky_Dynamical_thermalization.$(VIDEOEXT): Shepelyansky_Dynamical_thermalization.png.$(VIDEOEXT) Shepelyansky_Dynamical_thermalization_in_isolated_quantum_dots_and_black_holes-1_9-3-17.MTS.$(VIDEOEXT) Shepelyansky_Dynamical_thermalization_in_isolated_quantum_dots_and_black_holes-2_9-3-17.MTS.$(VIDEOEXT)  Shepelyansky_Dynamical_thermalization_afterwords.png.$(VIDEOEXT)
	$(call MERGE,$^,"Dima Shepelyansky Dynamical thermalization in isolated quantum dots and black holes","BINP 2017")

Yang_Zhang_Multiloop_integral_reduction.$(VIDEOEXT): Yang_Zhang_Multiloop_integral_reduction.png.$(VIDEOEXT) Multiloop_integral_reduction_Yang_Zhang1-23.3.17.MTS.$(VIDEOEXT) Multiloop_integral_reduction_Yang_Zhang2-23.3.17.MTS.$(VIDEOEXT) Multiloop_integral_reduction_Yang_Zhang3-23.3.17.MTS.$(VIDEOEXT) Yang_Zhang_Multiloop_integral_reduction_afterwords.png.$(VIDEOEXT)
	$(call MERGE,$^,"Yang Zhang Some recent progress in multiloop integral reduction","BINP 2017")

Grozin_Casimir_Scaling_Breaking.$(VIDEOEXT): Grozin_Casimir_Scaling_Breaking.png.$(VIDEOEXT) GrozinCasimirScalingBreaking-1-21-9-2017.MTS.$(VIDEOEXT) GrozinCasimirScalingBreaking-2-21-9-2017.MTS.$(VIDEOEXT) Grozin_Casimir_Scaling_Breaking_afterwords.png.$(VIDEOEXT)
	$(call MERGE,$^,"Andrej Grozin Casimir Scaling Breaking","BINP 2017")

Grozin_Heavy_Quark_Form_Factors.$(VIDEOEXT): Grozin_Heavy_Quark_Form_Factors.png.$(VIDEOEXT) GrozinHeavyQuarkFormFactors-1-05.10.17.MTS.$(VIDEOEXT) GrozinHeavyQuarkFormFactors-2-05.10.17.MTS.$(VIDEOEXT) Grozin_Heavy_Quark_Form_Factors_afterwords.png.$(VIDEOEXT)
	$(call MERGE,$^,"Andrej Grozin Heavy quark form factors in the large beta sub 0 limit","BINP 2017")

# Чистка
clean:
	rm -f *.*.$(VIDEOEXT)  *~
# Полная чистка
fullclean: clean
	rm -f *.$(VIDEOEXT)




