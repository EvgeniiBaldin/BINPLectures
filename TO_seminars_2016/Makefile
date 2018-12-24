#
# Сборка лекций
# 

include ../rules.mk

all:
	@echo "Usage: make file.$(VIDEOEXT)"
	@echo "Usage: make clean"
	@echo "Usage: make fullclean"

Parnachev_Constrains_from_unitarity_in_Conformal_field_theories.$(VIDEOEXT): Parnachev_Constrains_from_unitarity_in_Conformal_field_theories.png.$(VIDEOEXT) TO_Seminar_A_Parnachev_Constraints_from_unitarity_in_CFTs_1_28.04.16.MTS.$(VIDEOEXT) TO_Seminar_A_Parnachev_Constraints_from_unitarity_in_CFTs_2_28.04.16.MTS.$(VIDEOEXT) TO_Seminar_A_Parnachev_Constraints_from_unitarity_in_CFTs_3_28.04.16.MTS.$(VIDEOEXT) Parnachev_Constrains_from_unitarity_in_Conformal_field_theories_afterwords.png.$(VIDEOEXT)
	$(call MERGE,$^,"Andrei Parnachev Constrains from unitarity in Conformal field theories","BINP 2016")

Krachkov_QED_processes_in_strong_atomic_fields_at_high_energy.$(VIDEOEXT): Krachkov_QED_processes_in_strong_atomic_fields_at_high_energy.png.$(VIDEOEXT) TO_Seminar_Krachkov_QED_processes_in_strong_atomic_fields_at_high_energy_1_05.05.16.MTS.$(VIDEOEXT) TO_Seminar_Krachkov_QED_processes_in_strong_atomic_fields_at_high_energy_2_05.05.16.MTS.$(VIDEOEXT) Krachkov_QED_processes_in_strong_atomic_fields_at_high_energy_afterwords.png.$(VIDEOEXT)
	$(call MERGE,$^,"Petr Krachkov QED processes in strong atomic fields at high energy","BINP 2016")

Sushkov_Novel_quantum_materials_and_effects.$(VIDEOEXT): Sushkov_Novel_quantum_materials_and_effects.png.$(VIDEOEXT) TO_Seminar_Sushkov_Novel_quantum_materials_and_effects_1_11.08.16.MTS.$(VIDEOEXT) TO_Seminar_Sushkov_Novel_quantum_materials_and_effects_2_11.08.16.MTS.$(VIDEOEXT) Sushkov_Novel_quantum_materials_and_effects_afterwords.png.$(VIDEOEXT)
	$(call MERGE,$^,"O Sushkov Novel quantum materials and effects","BINP 2016")

Grozin_Leading_and_next_to_leading_nf_terms.$(VIDEOEXT): Grozin_Leading_and_next_to_leading_nf_terms.png.$(VIDEOEXT) TO_Seminar_Grozin_Leading_and_next_to_leading_nf_terms_1_25.08.16.MTS.$(VIDEOEXT) TO_Seminar_Grozin_Leading_and_next_to_leading_nf_terms_2_25.08.16.MTS.$(VIDEOEXT) Grozin_Leading_and_next_to_leading_nf_terms_afterwords.png.$(VIDEOEXT)
	$(call MERGE,$^,"Andrej Grozin Leading and next-to-leading large-nf terms in the cusp anomalous dimension and the quark-antiquark potential","BINP 2016")

Grozin_B_meson_B_parameter_from_HQET_sum_rules.$(VIDEOEXT): Grozin_B_meson_B_parameter_from_HQET_sum_rules.png.$(VIDEOEXT) TO_Seminar_Grozin_B_meson_B_parameter_from_HQET_sum_rules_1_01.09.16.MTS.$(VIDEOEXT) TO_Seminar_Grozin_B_meson_B_parameter_from_HQET_sum_rules_2_01.09.16.MTS.$(VIDEOEXT) Grozin_B_meson_B_parameter_from_HQET_sum_rules_afterwords.png.$(VIDEOEXT)
	$(call MERGE,$^,"Andrej Grozin B meson B parameter from HQET sum rules","BINP 2016")


# Чистка
clean:
	rm -f *.*.$(VIDEOEXT)  *~
# Полная чистка
fullclean: clean
	rm -f *.$(VIDEOEXT)




