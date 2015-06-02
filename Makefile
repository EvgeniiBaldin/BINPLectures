#
# Сборка лекций
# 

include rules.mk


all:
	@echo "run: make src"
	@echo "run: make exec"

exec: 
	@chmod +x *.pl 


src:
	git archive --format=tar.gz HEAD \
          --prefix=1080p-`date +'%y%m%d'`/  \
           -o skeleton1080p.tar.gz 

