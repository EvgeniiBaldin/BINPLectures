#!/usr/bin/perl -w
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

getopts("hl:e:");
use vars qw/$opt_h $opt_l $opt_e/;
$ENV{SGE_TASK_ID}=80;
if (defined($opt_h)||(!defined($ENV{SGE_TASK_ID}))) {
  print "Usage: $0 [-l lectureslist.txt] [-e ext] (for batch only!)\n";
  print "Options: -l - lectures list (def. lectureslist.txt)\n";
  print "Options: -e - output file extention (def. mp4) \n";
  print "Options: -h - help message\n";
  exit();
}

unless (defined $opt_l) {$opt_l="lectureslist.txt";}
unless (defined $opt_e) {$opt_e="mp4";}


open(LIST,"$opt_l") or die "LIST open: \"$opt_l\" $!";
while (<LIST>) {
  chomp;s/#.*//;s/^\s+//;s/\s+$//;next unless length;
  ($ifile,$dir,$file)=split(/\s+/);
  if ($ifile<=0) {last;}
  $dirlist[$ifile]=$dir;
  $filelist[$ifile]=$file;
}
close(LIST) or die "LIST close: \"$opt_l\" $!";

$ifile=$ENV{SGE_TASK_ID};

$cmd="cd ".$dirlist[$ifile]."; make ".$filelist[$ifile].".$opt_e";
print "$cmd\n";

if ($dirlist[$ifile] ne "NONE") {
  system($cmd);
} 

