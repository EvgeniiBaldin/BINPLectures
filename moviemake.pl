#!/usr/bin/perl -w
# Костыль для использования кластера
# -------------------------------------------
# --          use perl                     --
#$ -S /usr/bin/perl
# -------------------------------------------
# --             batch name                --
#$ -N makemovie
# -------------------------------------------
# --     What to redirect to where         --
#$ -cwd
#log_$JOB_NAME.$JOB_ID
#$ -o /dev/null
#$ -j y
# -------------------------------------------
# --             Qeue list                 --
# default, vm_q
#$ -q default
# -------------------------------------------
# --             mail me                   --
# -M E.M.Baldin@gmail.com
#$ -m be
# -------------------------------------------
use Getopt::Std;
use File::Find;
use File::stat;

getopts("hc");
use vars qw/$opt_h $opt_c/;



if (defined($opt_h)||
    (!defined($opt_c)&&!defined($ENV{SGE_TASK_ID}))) {
  print "Usage: $0 [-h] -f <run> -t <run> [-w <dir>] [-i]\n";
  print "Options: -c - count number of files\n";
  print "Options: -h - help message\n";
  exit();
}

# список файлов
@FILES = (
	  {
	   file => "QCD_Fadin_Lecture01",
	   dir => "QCD_Lectures_Fadin_Spring_2014",
	  },
	  {
	   file => "QCD_Fadin_Lecture02",
	   dir => "QCD_Lectures_Fadin_Spring_2014",
	  },
	  {
	   file => "QCD_Fadin_Lecture03",
	   dir => "QCD_Lectures_Fadin_Spring_2014",
	  },
	  {
	   file => "QCD_Fadin_Lecture04",
	   dir => "QCD_Lectures_Fadin_Spring_2014",
	  },
	  {
	   file => "QCD_Fadin_Lecture05",
	   dir => "QCD_Lectures_Fadin_Spring_2014",
	  },
	  {
	   file => "QCD_Fadin_Lecture06",
	   dir => "QCD_Lectures_Fadin_Spring_2014",
	  },
	  {
	   file => "QCD_Fadin_Lecture07",
	   dir => "QCD_Lectures_Fadin_Spring_2014",
	  },
	  {
	   file => "QCD_Fadin_Lecture08",
	   dir => "QCD_Lectures_Fadin_Spring_2014",
	  },
	  {
	   file => "QCD_Fadin_Lecture09",
	   dir => "QCD_Lectures_Fadin_Spring_2014",
	  },
	  {
	   file => "QCD_Fadin_Lecture10",
	   dir => "QCD_Lectures_Fadin_Spring_2014",
	  },
	  {
	   file => "QCD_Fadin_Lecture11",
	   dir => "QCD_Lectures_Fadin_Spring_2014",
	  },
	  {
	   file => "QCD_Fadin_Lecture12",
	   dir => "QCD_Lectures_Fadin_Spring_2014",
	  },
	  {
	   file => "QCD_Fadin_Lecture13",
	   dir => "QCD_Lectures_Fadin_Spring_2014",
	  },
	  {
	   file => "QCD_Fadin_Lecture14",
	   dir => "QCD_Lectures_Fadin_Spring_2014",
	  },
	  {
	   file => "QCD_Fadin_Lecture15",
	   dir => "QCD_Lectures_Fadin_Spring_2014",
	  },
	  {
	   file => "QCD_Fadin_Lecture16",
	   dir => "QCD_Lectures_Fadin_Spring_2014",
	  },
	  {
	   file => "QED_Fadin_Lecture01",
	   dir => "QED_Lectures_Fadin_Autumn_2013",
	  },
	  {
	   file => "QED_Fadin_Lecture02",
	   dir => "QED_Lectures_Fadin_Autumn_2013",
	  },
	  {
	   file => "QED_Fadin_Lecture03",
	   dir => "QED_Lectures_Fadin_Autumn_2013",
	  },
	  {
	   file => "QED_Fadin_Lecture04",
	   dir => "QED_Lectures_Fadin_Autumn_2013",
	  },
	  {
	   file => "QED_Fadin_Lecture05",
	   dir => "QED_Lectures_Fadin_Autumn_2013",
	  },
	  {
	   file => "QED_Fadin_Lecture06",
	   dir => "QED_Lectures_Fadin_Autumn_2013",
	  },
	  {
	   file => "QED_Fadin_Lecture07",
	   dir => "QED_Lectures_Fadin_Autumn_2013",
	  },
	  {
	   file => "QED_Fadin_Lecture08",
	   dir => "QED_Lectures_Fadin_Autumn_2013",
	  },
	  {
	   file => "QED_Fadin_Lecture09",
	   dir => "QED_Lectures_Fadin_Autumn_2013",
	  },
	  {
	   file => "QED_Fadin_Lecture10",
	   dir => "QED_Lectures_Fadin_Autumn_2013",
	  },
	  {
	   file => "QED_Fadin_Lecture11",
	   dir => "QED_Lectures_Fadin_Autumn_2013",
	  },
	  {
	   file => "QED_Fadin_Lecture12",
	   dir => "QED_Lectures_Fadin_Autumn_2013",
	  },
	  {
	   file => "QED_Fadin_Lecture13",
	   dir => "QED_Lectures_Fadin_Autumn_2013",
	  },
	  {
	   file => "QED_Fadin_Lecture14",
	   dir => "QED_Lectures_Fadin_Autumn_2013",
	  },
	  {
	   file => "QED_Fadin_Lecture15",
	   dir => "QED_Lectures_Fadin_Autumn_2013",
	  },
	  {
	   file => "SUSY_Chernyak_Lecture19",
	   dir => "SUSY_Lectures_Chernyak_Autumn_2013",
	  },
	  {
	   file => "SUSY_Chernyak_Lecture20",
	   dir => "SUSY_Lectures_Chernyak_Autumn_2013",
	  },
	  {
	   file => "SUSY_Chernyak_Lecture21",
	   dir => "SUSY_Lectures_Chernyak_Autumn_2013",
	  },
	  {
	   file => "SUSY_Chernyak_Lecture22",
	   dir => "SUSY_Lectures_Chernyak_Autumn_2013",
	  },
	  {
	   file => "SUSY_Chernyak_Lecture23",
	   dir => "SUSY_Lectures_Chernyak_Autumn_2013",
	  },
	  {
	   file => "SUSY_Chernyak_Lecture24",
	   dir => "SUSY_Lectures_Chernyak_Autumn_2013",
	  },
	  {
	   file => "SUSY_Chernyak_Lecture25",
	   dir => "SUSY_Lectures_Chernyak_Autumn_2013",
	  },
	  {
	   file => "EW_Chernyak_Lecture01",
	   dir => "EW_Lectures_Chernyak_Autumn_2013",
	  },
	  {
	   file => "EW_Chernyak_Lecture02",
	   dir => "EW_Lectures_Chernyak_Autumn_2013",
	  },
	  {
	   file => "EW_Chernyak_Lecture03",
	   dir => "EW_Lectures_Chernyak_Autumn_2013",
	  },
	  {
	   file => "EW_Chernyak_Lecture04",
	   dir => "EW_Lectures_Chernyak_Autumn_2013",
	  },
	  {
	   file => "EW_Chernyak_Lecture05",
	   dir => "EW_Lectures_Chernyak_Autumn_2013",
	  },
	  {
	   file => "EW_Chernyak_Lecture06",
	   dir => "EW_Lectures_Chernyak_Autumn_2013",
	  },
	  {
	   file => "EW_Chernyak_Lecture07",
	   dir => "EW_Lectures_Chernyak_Autumn_2013",
	  },
	  {
	   file => "EW_Chernyak_Lecture08",
	   dir => "EW_Lectures_Chernyak_Autumn_2013",
	  },
	  {
	   file => "EW_Chernyak_Lecture09",
	   dir => "EW_Lectures_Chernyak_Autumn_2013",
	  },
	  {
	   file => "EW_Chernyak_Lecture10",
	   dir => "EW_Lectures_Chernyak_Autumn_2013",
	  },
	  {
	   file => "EW_Chernyak_Lecture11",
	   dir => "EW_Lectures_Chernyak_Autumn_2013",
	  },
	  {
	   file => "EW_Chernyak_Lecture12",
	   dir => "EW_Lectures_Chernyak_Autumn_2013",
	  },
	  {
	   file => "EW_Chernyak_Lecture13",
	   dir => "EW_Lectures_Chernyak_Autumn_2013",
	  },
	  {
	   file => "EW_Chernyak_Lecture14",
	   dir => "EW_Lectures_Chernyak_Autumn_2013",
	  },
	  {
	   file => "EW_Chernyak_Lecture15",
	   dir => "EW_Lectures_Chernyak_Autumn_2013",
	  },
	  {
	   file => "EW_Chernyak_Lecture16",
	   dir => "EW_Lectures_Chernyak_Autumn_2013",
	  },
	  {
	   file => "EW_Chernyak_Lecture17",
	   dir => "EW_Lectures_Chernyak_Autumn_2013",
	  },
	  {
	   file => "CHAOS_Zhirov_Lecture01",
	   dir => "Nonlinear_and_Chaotic_Dynamics_Lectures_Zhirov_Spring_2014",
	  },
	  {
	   file => "CHAOS_Zhirov_Lecture02",
	   dir => "Nonlinear_and_Chaotic_Dynamics_Lectures_Zhirov_Spring_2014",
	  },
	  {
	   file => "CHAOS_Zhirov_Lecture03",
	   dir => "Nonlinear_and_Chaotic_Dynamics_Lectures_Zhirov_Spring_2014",
	  },
	  {
	   file => "CHAOS_Zhirov_Lecture04",
	   dir => "Nonlinear_and_Chaotic_Dynamics_Lectures_Zhirov_Spring_2014",
	  },
	 );


if (defined $opt_c) {
  $count=$#FILES+1;
  printf "$count\n";
  exit(0);
}

#delta=1;#ENV{SGE_TASK_STEPSIZE};
#nfile=$ENV{SGE_TASK_ID}-1;
$nfile=int(($ENV{SGE_TASK_ID}-1)/4);
$sparse=($ENV{SGE_TASK_ID}-1)%4;
# sparce используется, чтобы на восьмиядерном узле одновременно
# запускалось по возможности только два потока. Костыль.
if ($sparse==0) {
  $cmd="cd ".$FILES[$nfile]{dir}."; make ".$FILES[$nfile]{file}.".mp4";
  print "$cmd\n";
  system($cmd);
}
else {
  sleep(120);
}

