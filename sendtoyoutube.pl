#!/usr/bin/perl -w
require data;
use Getopt::Std;

getopts("ht:c:f:");
use vars qw/$opt_h $opt_c $opt_f $opt_t %category %tags %summary %dir1080p/;


if (defined($opt_h)||
    (!defined($opt_c))) {
  print "Usage: $0 [-h] [-a || -t ABBR]\n";
  print "Options: -h - help message\n";
  print "Options: -c ABBR - send to youtube specific course\n";
  print "Options:    ABBR could be ASTRO, QCD(s), QED, SUSY, EW, NaCD, HEP(s), GG, NUC, STR\n";
  print "Options: -f INT - number of the first videofile (def. 1)\n";
  print "Options: -t INT - number of the last videofile \n";
  exit();
}

$basedir="/Space/Lectures/torrent/";

if (!defined $number{$opt_c}) {
  die "Undefined $opt_c";
}

unless (defined $opt_f) {$opt_f=1}
unless (defined $opt_t) {$opt_t=$number{$opt_c}}


$ext="mp4";
for ($i=$opt_f;$i<=$opt_t;$i++) {
  unless (defined $name{"$opt_c-$i"}) {next;} 
  $cmd="google youtube post ";
  $cmd.="--category=\"".$category{$opt_c}."\" ";
  $cmd.="--tags=\"".$tags{$opt_c}."\" ";
  $cmd.="--summary \"".$summary{"$opt_c-$i"}."\" ";
  $cmd.="\"$basedir".$dir1080p{$opt_c}."/".$name{"$opt_c-$i"}.".$ext\" ";
  $cmd.=" --user=lekcii-po-teore-5099 ";
  #  $cmd.="http://www.youtube.com/channel/UCglW_rYzVGwnzUsWDxbyS_w";
  print "$cmd\n";
  system "$cmd\n";
}

# В /usr/lib/python2.7/dist-packages/googlecl/authentication.py для
# аутентификации заменил в одном месте gmail.com на
# pages.plusgoogle.com
#    if given_account.find('@') == -1:
##      given_account += '@gmail.com'
#      given_account += '@pages.plusgoogle.com'
