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
  print "Options:    ABBR could be QCD, QED, SUSY, EW, NaCD, HEP(s) GG NUC an STR\n";
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
	  HEP => 56,
	  NaCD => 71,
	  GG => 81,
	  HEPs => 101,
          NUC => 121,
	  STR => 136,
);

%last = (
	  ALL => 140,
	  QCD => 16,
	  QED => 31,
	  SUSY => 38,
	  EW => 55,
	  HEP => 70,
	  NaCD => 79,
	  GG => 91,
	  HEPs => 115,
          NUC => 130,
	  STR => 140,
	);

if (!defined $first{$opt_t}||!defined $last{$opt_t}) {
  die "Undefined $opt_t";
}

$cmd="qsub -pe smp 4 -t $first{$opt_t}-$last{$opt_t} ./moviemake-batch.pl";
print "$cmd\n";
system($cmd);

