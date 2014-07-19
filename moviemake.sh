#!/bin/bash
# ./moviemake.pl -c -- считает число файлов (59)
#qsub -t 1-59 ./moviemake.pl # если не используется $sparce
qsub -t 1-233 ./moviemake.pl # разрядка в 4 раза