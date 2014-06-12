# ===
# Переменные, используемые при сборке файлов лекций
# ===
# Размер картинки (нужно для заставки)
#1080p: 1920 х 1080;
#720p: 1280 х 720;
XSIZE:=1280
YSIZE:=720
# Переменнеые для кодирования видео
# Тип видео
VIDEOTYPE:=hd720
# Путь до видеоисходников
SRCPATH:= ../source/
# Путь до заставок
COVERPATH:= Cover/
# Длительность заставки в секундах
COVERDURATION:= 5
# Расширение для контейнера
# mp4 mkv
VIDEOEXT:=mp4
# Видеокодек
# libx264 libtheora libvpx libvpx-vp9
VIDEOENCODER:=libx264
# Звуковой кодек
# ac3 vorbis libvo_aacenc libmp3lame
SOUNDCODEC:=ac3
# Путь до исполняемого файла ffmpeg
# Статически слинкованный бинарник можно скачать с сайта ffmpeg
FFMPEG:=bin/ffmpeg
# Ключи результирующего файла для ffmeg
FOUTKEY := -c:v $(VIDEOENCODER) -c:a $(SOUNDCODEC) -s $(VIDEOTYPE) -ac 2 -sn
# Имя текущей директории
DIRNAME := $(word $(words $(subst /, ,$(PWD))),$(subst /, ,$(PWD)))

# ====
# Механика кодирования (работает только для директорий уровнем выше)
# ====
# нужно для циклов (для другой оболочки придётся переписать)
SHELL = /bin/bash
# Переопределение путей и переменных
SRCPATH := ../$(strip $(SRCPATH))$(DIRNAME)
COVERPATH := ../$(strip $(COVERPATH))$(DIRNAME)
FFMPEG := ../$(strip $(FFMPEG))
VIDEOEXT:=$(strip $(VIDEOEXT))
ECHO:=/bin/echo
# Заставка 
%.png.$(VIDEOEXT): $(COVERPATH)/%.png
	$(FFMPEG) -loop 1 -i $< -f lavfi -i aevalsrc=0 $(FOUTKEY) -q:v 1 -t $(COVERDURATION) $@
# Кодирование фрагментов видеофайлов
%.mts.$(VIDEOEXT): $(SRCPATH)/%.mts
	$(FFMPEG) -i $<  $(FOUTKEY) $@
# Объединение файлов 
MERGE =	n=0 ; for x in $1; do  let "n+=1" ; done ; let "m=n-1" ;\
         $(FFMPEG) $(patsubst %,-i %,$1)  -filter_complex \
           "$$(eval "echo \[{0..$$m}:{0,1}\]") concat=n=$$n:v=1:a=1 [v] [a] "\
           -map "[v]" -map "[a]" -metadata title=$2 -metadata comment=$3 \
           $(FOUTKEY) $@
# Цель функции сформировать строчку вида (для трёх файлов):
#	$(FFMPEG) -i QCD_Fadin_Lecture01.png.$(VIDEOEXT) -i QCD_Fadin_Lecture01.1_18.02.2014.mts.$(VIDEOEXT) -i QCD_Fadin_Lecture01.2_18.02.2014.mts.$(VIDEOEXT)  -filter_complex  \
#  '[0:0] [0:1] [1:0] [1:1] [2:0] [2:1] concat=n=3:v=1:a=1 [v] [a] ' \
#-map '[v]' -map '[a]' -metadata title="QCD" -metadata comment="2014" $(FOUTKEY) $@
# (для двух файлов):
#	$(FFMPEG) -i QCD_Fadin_Lecture02.png.$(VIDEOEXT) -i QCD_Fadin_Lecture02.1_18.02.2014.mts.$(VIDEOEXT) -filter_complex \
#  '[0:0] [0:1] [1:0] [1:1]  concat=n=2:v=1:a=1 [v] [a] ' \
# -map '[v]' -map '[a]' -metadata title="QCD" -metadata comment="2014" $(FOUTKEY) $@

