#
# Сборка лекций
# 

include rules.mk


all:
	@echo "run: make src"


src:
	git archive --format=tar.gz HEAD \
          --prefix=1080p-`date +'%y%m%d'`/  \
           -o skeleton1080p.tar.gz 

