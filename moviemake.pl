#!/usr/bin/perl -w
use Getopt::Std;

getopts("ht:c:f:a");
use vars qw/$opt_h $opt_c $opt_a $opt_f $opt_t/;


if (defined($opt_h)||
    (!defined($opt_c)&&!defined($opt_a))) {
  print "Usage: $0 [-h] [-a || -t ABBR]\n";
  print "Options: -h - help message\n";
  print "Options: -a - convert all lectures\n";
  print "Options: -c ABBR - convert specific course\n";
  print "Options:    ABBR could be ASTRO, ANTAR, QCD(s), QED, SUSY, EW, NaCD, HEP(s), GG, NUC, STR, TO\n";
  print "Options: -f INT - number of the first videofile (def. 1)\n";
  print "Options: -t INT - number of the last videofile \n";
  exit();
}

if (defined $opt_a) {$opt_c="ALL"};

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
	  STR => 141,
	  ASTRO => 151,
	  QCDs => 171,
	  TO => 191,
	  ANTAR => 241,
);

%last = (
	  ALL => 190,
	  QCD => 16,
	  QED => 31,
	  SUSY => 38,
	  EW => 55,
	  HEP => 70,
	  NaCD => 79,
	  GG => 97,
	  HEPs => 117,
          NUC => 136,
	  STR => 145,
	  ASTRO => 154,
	  QCDs => 190,
	  TO => 206,
	  ANTAR => 245,
	);

if (!defined $first{$opt_c}||!defined $last{$opt_c}) {
  die "Undefined $opt_c";
}

if (defined $opt_t) {$last{$opt_c}=$first{$opt_c}+$opt_t-1};
if (defined $opt_f) {$first{$opt_c}=$first{$opt_c}+$opt_f-1};


$cmd="qsub -pe smp 2 -t $first{$opt_c}-$last{$opt_c} ./moviemake-batch.pl";
print "$cmd\n";
system($cmd);

