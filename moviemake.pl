#!/usr/bin/perl -w
use Getopt::Std;
use File::Basename;
use Cwd;
use List::MoreUtils qw/ uniq /;

getopts("ht:c:f:abLHC:lS:");
use vars qw/$opt_h $opt_c $opt_a $opt_f $opt_t $opt_b $opt_l $opt_L $opt_H $opt_C $opt_S/;


if (defined($opt_h)||
    (!defined($opt_c)&&!defined($opt_a))||
    (defined $opt_H && defined $opt_L)) {
  print "Usage: $0 [-h] [-a || -c ABBR] [-b] [-l||-H]]\n";
  print "Option: -h - help message\n";
  print "Option: -a - convert all lectures\n";
  print "Option: -c ABBR - convert specific course\n";
  print "Option:    ABBR could be ASTRO, ANTAR, QCDs, QEDs, SUSY, EW, NaCD, HEPs, GG, NUC, STR, TO, TO16, TO17, TO18, TO23, RGeom, HQT, QCDsh, ToSI, GR, GRs, GRdop, SM\n";
  print "Option: -f INT - number of the first videofile (def. 1)\n";
  print "Option: -t INT - number of the last videofile \n";
  print "Option: -l - lectures list (def. lectureslist.txt)\n";
  print "Option: -b - batch (tuned for _stark_)\n";
  print "Option: -C \"remake/update\" - remake cover (pdflatex and pdftoppm are nedded)\n";
  print "Resolution: if basedirname is \"1080p\" then option -H is used\n";
  print "Resolution: if basedirname is \"720p\" then option -l is used\n";
  print "Option: -H - High resolution (hd1080)\n";
  print "Option: -L - low resolution (hd720)\n";
  print "Option: -S \"DIR\"- source dir (def. ../source/)\n";
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
	  TO => 201,
	  ANTAR => 241,
          QEDs => 251,
          Python => 271,
          RGeom => 281,
	  HQT => 301,
	  QCDsh => 321,
	  TO16 => 341,
	  TO17 => 351,
	  TO18 => 361,
	  ToSI => 371,
	  GR => 401,
	  GRs => 421,
	  GRdop => 441,
	  TO23 => 471,
	  SM => 481,
);

%last = (
	  ALL => 293,
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
	  QCDs => 192,
	  TO => 219,
	  ANTAR => 245,
          QEDs => 270,
          Python => 279,
          RGeom => 295,
	  HQT => 317,
	  QCDsh => 335,
	  TO16 => 345,
	  TO17 => 354,
	  TO18 => 362,
	  ToSI => 397,
	  GR => 417,
	  GRs => 437,
	  GRdop => 468,
	  TO23 => 471,
	  SM => 487,
	);

if (!defined $first{$opt_c}||!defined $last{$opt_c}) {
  die "Undefined $opt_c";
}

if (defined $opt_t) {$last{$opt_c}=$first{$opt_c}+$opt_t-1};
if (defined $opt_f) {$first{$opt_c}=$first{$opt_c}+$opt_f-1};

unless (defined $opt_l) {$opt_l="lectureslist.txt";}
open(LIST,"$opt_l") or die "LIST open: \"$opt_l\" $!";
while (<LIST>) {
  chomp;s/#.*//;s/^\s+//;s/\s+$//;next unless length;
  ($ifile,$dir,undef)=split(/\s+/);
#  ($ifile,$dir,$file)=split(/\s+/);
  if ($ifile<=0) {last;}
  $dirlist[$ifile]=$dir;
  #    $filelist[$ifile]=$file;
}
close(LIST) or die "LIST close: \"$opt_l\" $!";

$EnvVars="";
if (defined $opt_H) {#hd1920
  $EnvVars="XSIZE=1920 YSIZE=1080 VIDEOTYPE=hd1080 ";
}
if (defined $opt_L) {#hd720
  $EnvVars="XSIZE=1280 YSIZE=720 VIDEOTYPE=hd720 ";
}

my $fulldir= getcwd();
$dirname  = basename("$fulldir");
if ($dirname eq "1080p") {#hd1920
  $EnvVars="XSIZE=1920 YSIZE=1080 VIDEOTYPE=hd1080 ";
}
elsif ($dirname eq "720p") {#hd720
  $EnvVars="XSIZE=1280 YSIZE=720 VIDEOTYPE=hd720 ";
}

if (defined $opt_S) {
  $EnvVars.=" SRCPATH=\"$opt_S\" ";
}


if (defined $opt_C) {
  my @uniquedir = uniq @dirlist[$first{$opt_c}..$last{$opt_c}];
  foreach $dir (@uniquedir) {
    if ($dir eq "NONE") {next;}
    $cdir="Cover/".$dir;
    $cmd="cd ".$cdir.";";
    if ($opt_C eq "remake") {
      $cmd.="$EnvVars make fullclean ;";
    }
    $cmd.=" $EnvVars make covers ";
    print "$cmd\n";
    system($cmd);
  }
}
else {
  # options
  $cmdopts=" -l $opt_l ";
  if (defined $opt_b) {
    $cmd="$EnvVars qsub -pe smp 2 -t $first{$opt_c}-$last{$opt_c} ./moviemake-batch.pl $cmdopts";
    print "$cmd\n";
    system($cmd);
  }
  else {
    for (my $ifile=$first{$opt_c};$ifile<=$last{$opt_c};$ifile++) {
      $cmd="$EnvVars ./moviemake-batch.pl -i $ifile $cmdopts";
      print "$cmd\n";
      system($cmd);
    }
  }
}

