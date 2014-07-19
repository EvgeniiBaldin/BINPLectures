#!/usr/bin/perl -w
use Getopt::Std;

getopts("ht:a");
use vars qw/$opt_h $opt_t $opt_a/;


if (defined($opt_h)||
    (!defined($opt_t)&&!defined($opt_a))) {
  print "Usage: $0 [-h] [-a || -t ABBR]\n";
  print "Options: -h - help message\n";
  print "Options: -a - convert all lectures\n";
  print "Options: -t ABBR - convert specific course\n";
  print "Options:    ABBR could be QCD, QED, SUSY, EW, NaCD and HEP \n";
  exit();
}

if (defined $opt_a) {$opt_t="ALL"};

# due to lectureslist.txt
%first = (
	  ALL => 1,
	  QCD => 1,
	  QED => 17,
	  SUSY => 32,
	  EW => 39,
	  NaCD => 56,
	  HEP => 60,
);

%last = (
	  ALL => 74,
	  QCD => 16,
	  QED => 31,
	  SUSY => 38,
	  EW => 55,
	  NaCD => 59,
	  HEP => 74,
	);

if (!defined $first{$opt_t}||!defined $last{$opt_t}) {
  die "Undefined $opt_t";
}

$cmd="qsub -pe pvm 4 -t $first{$opt_t}-$last{$opt_t} ./moviemake-batch.pl";
print "$cmd\n";
#system($cmd);

