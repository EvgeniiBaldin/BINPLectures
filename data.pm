#!/usr/bin/perl -w
# only data structure (for including)

#base dir
$basepath{"1080p"}="/Space/Lectures/1080p-141201";
$basepath{"src"}="/Space/Lectures/source";

#tracker list for announce
@trackerlist=qw{udp://tracker.openbittorrent.com:80
                udp://tracker.publicbt.com:80
                udp://tracker.istole.it:80
                udp://tracker.ccc.de:80};


# Теория сильных взаимодействий (лекции, профессор Фадин В.С., 2014 г.)
$dir{QCD} ="QCD_Lectures_Fadin_Spring_2014";
$dir1080p{QCD} ="QCD_Lectures_Fadin_Spring_2014_(1080p)";
$comment1080p{QCD}="QCD Fadin V.S., NSU Lectures on Physics (1080p libx264 ac3) http://www.inp.nsk.su/students/theor/videolectures/videolectures.html License CC-BY-SA";
$torrentfilename1080p{QCD}="NSUphyslect-QCD-Fadin-1080p.torrent";
$dirsrc{QCD} ="QCD_Lectures_Fadin_Spring_2014_(src)";
$commentsrc{QCD}="QCD Fadin V.S., NSU Lectures on Physics (source) http://www.inp.nsk.su/students/theor/videolectures/videolectures.html License CC-BY-SA";
$torrentfilenamesrc{QCD}="NSUphyslect-QCD-Fadin-source.torrent";



# Квантовая электродинамика (лекции, профессор Фадин В.С., 2013 г.)
$dir{QED} ="QED_Lectures_Fadin_Autumn_2013";
$dir1080p{QED} ="QED_Lectures_Fadin_Autumn_2013_(1080p)";
$comment1080p{QED}="QED Fadin V.S., NSU Lectures on Physics (1080p libx264 ac3) http://www.inp.nsk.su/students/theor/videolectures/videolectures.html License CC-BY-SA";
$torrentfilename1080p{QED}="NSUphyslect-QED-Fadin-1080p.torrent";
$dirsrc{QED} ="QED_Lectures_Fadin_Autumn_2013_(src)";
$commentsrc{QED}="QED Fadin V.S., NSU Lectures on Physics (source) http://www.inp.nsk.su/students/theor/videolectures/videolectures.html License CC-BY-SA";
$torrentfilenamesrc{QED}="NSUphyslect-QED-Fadin-source.torrent";

# Суперсимметрия в квантовой теории поля (спецкурс профессора Черняка
# В.Л., 2013 г.)
$dir{SUSY}="SUSY_Lectures_Chernyak_Autumn_2013";
$dir1080p{SUSY}="SUSY_Lectures_Chernyak_Autumn_2013_(1080p)";
$comment1080p{SUSY}="SUSY Chernyak V.L., NSU Lectures on Physics (1080p  libx264 ac3) http://www.inp.nsk.su/students/theor/videolectures/videolectures.html License CC-BY-SA";
$torrentfilename1080p{SUSY}="NSUphyslect-SUSY-Chernyak-1080p.torrent";
$dirsrc{SUSY}="SUSY_Lectures_Chernyak_Autumn_2013_(src)";
$commentsrc{SUSY}="SUSY Chernyak V.L., NSU Lectures on Physics (source) http://www.inp.nsk.su/students/theor/videolectures/videolectures.html License CC-BY-SA";
$torrentfilenamesrc{SUSY}="NSUphyslect-SUSY-Chernyak-source.torrent";

# Теория электрослабых взаимодействий (лекции, профессор Черняк В.Л.,
# 2013 г.)
$dir{EW}  ="EW_Lectures_Chernyak_Autumn_2013";
$dir1080p{EW}  ="EW_Lectures_Chernyak_Autumn_2013_(1080p)";
$comment1080p{EW}="EW Chernyak V.L., NSU Lectures on Physics (1080p libx264 ac3) http://www.inp.nsk.su/students/theor/videolectures/videolectures.html License CC-BY-SA";
$torrentfilename1080p{EW}="NSUphyslect-EW-Chernyak-1080p.torrent";
$dirsrc{EW}  ="EW_Lectures_Chernyak_Autumn_2013_(src)";
$commentsrc{EW}="EW Chernyak V.L., NSU Lectures on Physics (source) http://www.inp.nsk.su/students/theor/videolectures/videolectures.html License CC-BY-SA";
$torrentfilenamesrc{EW}="NSUphyslect-EW-Chernyak-source.torrent";


# Физика элементарных частиц (лекции, профессор Сербо В.Г., 2013 г.)
$dir{HEP} ="HEP_Lectures_Serbo_Autumn_2013";
$dir1080p{HEP} ="HEP_Lectures_Serbo_Autumn_2013_(1080p)";
$comment1080p{HEP}="HEP Serbo V.G., NSU Lectures on Physics (1080p libx264 ac3) http://www.inp.nsk.su/students/theor/videolectures/videolectures.html License CC-BY-SA";
$torrentfilename1080p{HEP}="NSUphyslect-HEP-Serbo-1080p.torrent";
$dirsrc{HEP} ="HEP_Lectures_Serbo_Autumn_2013_(src)";
$commentsrc{HEP}="HEP Serbo V.G., NSU Lectures on Physics (source) http://www.inp.nsk.su/students/theor/videolectures/videolectures.html License CC-BY-SA";
$torrentfilenamesrc{HEP}="NSUphyslect-HEP-Serbo-source.torrent";


# Физика элементарных частиц (семинары, доцент Сковпень Ю.И., 2014 г.)
$dir{HEPs}="Introduction_to_HEP_Seminars_Skovpen";
$dir1080p{HEPs}="HEP_Seminars_Skovpen_Autumn_2014_(1080p)";
$comment1080p{HEPs}="HEPs Skovpen Yu.I., NSU Lectures on Physics (1080p libx264 ac3) http://www.inp.nsk.su/students/theor/videolectures/videolectures.html License CC-BY-SA";
$torrentfilename1080p{HEPs}="NSUphyslect-HEPs-Skovpen-1080p.torrent";
$dirsrc{HEPs}="HEP_Seminars_Skovpen_Autumn_2014_(src)";
$commentsrc{HEPs}="HEPs Skovpen Yu.I., NSU Lectures on Physics (source) http://www.inp.nsk.su/students/theor/videolectures/videolectures.html License CC-BY-SA";
$torrentfilenamesrc{HEPs}="NSUphyslect-HEPs-Skovpen-source.torrent";

# Избранные вопросы нелинейной и хаотической динамики. (спецкурс
# доцента Жирова О.В., 2014 г.)
$dir{NaCD}="Nonlinear_and_Chaotic_Dynamics_Lectures_Zhirov_Spring_2014";
$dir1080p{NaCD}="Nonlinear_and_Chaotic_Dynamics_Lectures_Zhirov_Spring_2014_(1080p)";
$comment1080p{NaCD}="NaCD Zhirov O.V., NSU Lectures on Physics (1080p libx264 ac3) http://www.inp.nsk.su/students/theor/videolectures/videolectures.html License CC-BY-SA";
$torrentfilename1080p{NaCD}="NSUphyslect-NaCD-Zhirov-1080p.torrent";
$dirsrc{NaCD}="Nonlinear_and_Chaotic_Dynamics_Lectures_Zhirov_Spring_2014_(src)";
$commentsrc{NaCD}="NaCD Zhirov O.V., NSU Lectures on Physics (source) http://www.inp.nsk.su/students/theor/videolectures/videolectures.html License CC-BY-SA";
$torrentfilenamesrc{NaCD}="NSUphyslect-NaCD-Zhirov-source.torrent";

# Двухфотонная физика (лекции, профессор Сербо В.Г., 2014 г.)
$dir{GG}  ="Gamma-Gamma_Serbo_Lecture";
$dir1080p{GG}  ="Gamma-Gamma_Serbo_Lecture_Autumn_2014_(1080p)";
$comment1080p{GG}="GG Serbo V.G., NSU Lectures on Physics (1080p libx264 ac3) http://www.inp.nsk.su/students/theor/videolectures/videolectures.html License CC-BY-SA";
$torrentfilename1080p{GG}="NSUphyslect-GG-Serbo-1080p.torrent";
$dirsrc{GG}  ="Gamma-Gamma_Serbo_Lecture_Autumn_2014_(src)";
$commentsrc{GG}="GG Serbo V.G., NSU Lectures on Physics (source) http://www.inp.nsk.su/students/theor/videolectures/videolectures.html License CC-BY-SA";
$torrentfilenamesrc{GG}="NSUphyslect-GG-Serbo-source.torrent";


# Атомное ядро (лекции, профессор Дмитриев В.Ф., 2014 г.)
$dir{NUC} ="Nucleus_Dmitriev_Lecture";
$dir1080p{NUC} ="Nucleus_Dmitriev_Lecture_Autumn_2014_(1080p)";
$comment1080p{NUC}="NUC Dmitriev V.F., NSU Lectures on Physics (1080p libx264 ac3) http://www.inp.nsk.su/students/theor/videolectures/videolectures.html License CC-BY-SA";
$torrentfilename1080p{NUC}="NSUphyslect-NUC-Dmitriev-1080p.torrent";
$dirsrc{NUC} ="Nucleus_Dmitriev_Lecture_Autumn_2014_(src)";
$commentsrc{NUC}="NUC Dmitriev V.F., NSU Lectures on Physics (source) http://www.inp.nsk.su/students/theor/videolectures/videolectures.html License CC-BY-SA";
$torrentfilenamesrc{NUC}="NSUphyslect-NUC-Dmitriev-source.torrent";

# Экскурсии в теорию струн (спецкурс ст. преп., к.ф.-м.н. Померанского
# А.А., 2014 г.)
$dir{STR} ="Strings_Lectures_Pomeransky_Autumn";
$dir1080p{STR} ="Strings_Lectures_Pomeransky_2014_(1080p)";
$comment1080p{STR}="STR Pomeransky A.A., NSU Lectures on Physics (1080p libx264 ac3) http://www.inp.nsk.su/students/theor/videolectures/videolectures.html License CC-BY-SA";
$torrentfilename1080p{STR}="NSUphyslect-STR-Pomeransky-1080p.torrent";
$dirsrc{STR} ="Strings_Lectures_Pomeransky_2014_(src)";
$commentsrc{STR}="STR Pomeransky A.A., NSU Lectures on Physics (source) http://www.inp.nsk.su/students/theor/videolectures/videolectures.html License CC-BY-SA";
$torrentfilenamesrc{STR}="NSUphyslect-STR-Pomeransky-source.torrent";
