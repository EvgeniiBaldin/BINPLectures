#
# Сборка лекций
# 

include rules.mk


all:
	@echo "run: make src"


src:
	git archive --format=tar.gz HEAD \
          --prefix=720p-`date +'%y%m%d'`/  \
           -o skeleton720p.tar.gz 


#Делаем торрент:c
#torrent -t -s NSUphyslectsrc.torrent -u udp://tracker.publicbt.com:80 source/

#transmission-create --comment "NSU Lectures on Physics (sources) http://www.inp.nsk.su/students/theor/videolectures/videolectures.html License CC-BY-SA" --outfile NSUphyslectsrc.torrent --tracker udp://tracker.publicbt.com:80 /Space/Lectures/source/


#thphlecsource.torrent перемещаем на microserver и загружаем через web-морду. Убеждаемся, что в Download скопирована /Space/Lectures/source/


#QCD_Lectures_Fadin_Spring_2014

#1 QCD_Fadin_Lecture01.1_18.02.2014.mts QCD_Fadin_Lecture01.2_18.02.2014.mts
#2 QCD_Fadin_Lecture02.1_18.02.2014.mts
#3 QCD_Fadin_Lecture03.1_20.02.2014.mts QCD_Fadin_Lecture03.2_20.02.2014.mts
#4 QCD_Fadin_Lecture04.1_11.03.2014.mts
#5 QCD_Fadin_Lecture05.1_18.03.2014.mts
#6 QCD_Fadin_Lecture06.1_25.03.2014.mts QCD_Fadin_Lecture06.2_25.03.2014.mts
#7 QCD_Fadin_Lecture07.1_01.04.2014.mts QCD_Fadin_Lecture07.2_01.04.2014.mts
#8 QCD_Fadin_Lecture08.1_08.04.2014.mts
#9 QCD_Fadin_Lecture09.1_15.04.2014.mts QCD_Fadin_Lecture09.2_15.04.2014.mts
#10 QCD_Fadin_Lecture10.1_15.04.2014.mts
#11 QCD_Fadin_Lecture11.1_22.04.2014.mts QCD_Fadin_Lecture11.2_22.04.2014.mts
#12 QCD_Fadin_Lecture12.1_29.04.2014.mts QCD_Fadin_Lecture12.2_29.04.2014.mts
#13 QCD_Fadin_Lecture13.1_06.05.2014.mts QCD_Fadin_Lecture13.2_06.05.2014.mts
#14 QCD_Fadin_Lecture14.1_13.05.2014.mts
#15 QCD_Fadin_Lecture15.1_27.05.2014.mts QCD_Fadin_Lecture15.2_27.05.2014.mts
#16 QCD_Fadin_Lecture16.1_11.04.2014.mts

#QED_Lectures_Fadin_Autumn_2013

#1 QED_Fadin_Lecture01.1_3.9.2013.mts
#2 QED_Fadin_Lecture02.1_3.9.2013.mts
#3 QED_Fadin_Lecture03.1_11.9.2013.mts
#4 QED_Fadin_Lecture04.1_11.9.2013.mts
#5 QED_Fadin_Lecture05.1_17.9.2013.mts
#6 QED_Fadin_Lecture06.1_17.9.2013.mts
#7 QED_Fadin_Lecture07.1_01.10.2013.mts
#8 QED_Fadin_Lecture08.1_01.10.2013.mts
#9 QED_Fadin_Lecture09.1_19.11.13.mts
#10 QED_Fadin_Lecture10.1_26.11.13.mts
#11 QED_Fadin_Lecture11.1_26.11.13.mts
#12 QED_Fadin_Lecture12.1_03.12.13.mts QED_Fadin_Lecture12.2_03.12.13.mts
#13 QED_Fadin_Lecture13.1_10.12.13.mts QED_Fadin_Lecture13.2_10.12.13.mts
#14 QED_Fadin_Lecture14.1_17.12.13.mts
#15 QED_Fadin_Lecture15.1_17.12.13.mts

#SUSY_Lectures_Chernyak_Autumn_2013

#19 SUSY_Chernyak_Lecture19.1_30.10.2013.mts
#20 SUSY_Chernyak_Lecture20.1_10.11.2013.mts
#21 SUSY_Chernyak_Lecture21.1_15.11.2013.mts SUSY_Chernyak_Lecture21.2_15.11.2013.mts
#22 SUSY_Chernyak_Lecture22.1_20.11.2013.mts SUSY_Chernyak_Lecture22.2_20.11.2013.mts
#23 SUSY_Chernyak_Lecture23.1_04.12.2013.mts
#24 SUSY_Chernyak_Lecture24.1_11.12.2013.mts
#25 SUSY_Chernyak_Lecture25.1_18.12.2013.mts SUSY_Chernyak_Lecture25.2_18.12.2013.mts

#EW_Lectures_Chernyak_Autumn_2013

#1 EW_Chernyak_Lecture01.1_13.09.2013.mts EW_Chernyak_Lecture01.2_13.09.2013.mts
#2 EW_Chernyak_Lecture02.1_13.09.2013.mts EW_Chernyak_Lecture02.2_13.09.2013.mts
#3 EW_Chernyak_Lecture03.1_20.09.2013.mts
#4 EW_Chernyak_Lecture04.1_27.09.2013.mts EW_Chernyak_Lecture04.2_27.09.2013.mts
#5 EW_Chernyak_Lecture05.1_04.10.2013.mts EW_Chernyak_Lecture05.2_04.10.2013.mts
#6 EW_Chernyak_Lecture06.1_10.10.2013.mts
#7 EW_Chernyak_Lecture07.1_18.10.2013.mts
#8 EW_Chernyak_Lecture08.1_25.10.2013.mts EW_Chernyak_Lecture08.2_25.10.2013.mts
#9 EW_Chernyak_Lecture09.1_01.11.2013.mts
#10 EW_Chernyak_Lecture10.1_08.11.2013.mts
#11 EW_Chernyak_Lecture11.1_15.11.2013.mts
#12 EW_Chernyak_Lecture12.1_22.11.2013.mts
#13 EW_Chernyak_Lecture13.1_29.11.2013.mts
#14 EW_Chernyak_Lecture14.1_06.12.2013.mts
#15 EW_Chernyak_Lecture15.1_13.12.2013.mts
#16 EW_Chernyak_Lecture16.1_20.12.2013.mts EW_Chernyak_Lecture16.2_20.12.2013.mts
#17 EW_Chernyak_Lecture17.1_27.12.2013.mts

#Nonlinear_and_Chaotic_Dynamics_Lectures_Zhirov_Spring_2014

#1 CHAOS_Zjirov_Lecture_1.1-30-04-2014.mts
#2 CHAOS_Zjirov_Lecture_2.1-08-05-2014.mts
#3 CHAOS_Zjirov_Lecture_3.1-21-05-2014.mts