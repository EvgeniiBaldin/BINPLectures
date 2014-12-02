#!/usr/bin/perl -w
require data;
$bin="transmission-create ";

foreach $item (keys %dir) {
# 1080p tracker
  $cmd="cd ".$basepath{"1080p"}."; $bin --comment \"$comment1080p{$item}\" --outfile $torrentfilename1080p{$item} ";
  for ($i=0;$i<=$#trackerlist;$i++) {$cmd.="--tracker $trackerlist[$i] "}
  $cmd.="$dir{$item} ";

  print "$cmd\n";
  system($cmd);

# src tracker
  $cmd="cd ".$basepath{"src"}."; $bin --comment \"$commentsrc{$item}\" --outfile $torrentfilenamesrc{$item} ";
  for ($i=0;$i<=$#trackerlist;$i++) {$cmd.="--tracker $trackerlist[$i] "}
  $cmd.="$dir{$item} ";

  print "$cmd\n";
  system($cmd);
}

