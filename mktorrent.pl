#!/usr/bin/perl -w
require data;
$bin="transmission-create ";


foreach $item (keys %dir) {
#foreach $item (qw(HEP)) {
# 720p tracker
  $cmd="cd $torrentpath ; $bin --comment \"$comment720p{$item}\" --outfile $torrentfilename720p{$item}\[torrents.ru\].torrent  ;
#  for ($i=0;$i<=$#trackerlist;$i++) {$cmd.="--tracker $trackerlist[$i] "}
  $cmd.="\"$dir720p{$item}\" ";

  print "$cmd\n";
  system($cmd);

# 1080p tracker
  $cmd="cd $torrentpath ; $bin --comment \"$comment1080p{$item}\" --outfile $torrentfilename1080p{$item}\[torrents.ru\].torrent ";
#  for ($i=0;$i<=$#trackerlist;$i++) {$cmd.="--tracker $trackerlist[$i] "}
  $cmd.="\"$dir1080p{$item}\" ";

  print "$cmd\n";
  system($cmd);

# src tracker
  $cmd="cd $torrentpath ; $bin --comment \"$commentsrc{$item}\" --outfile $torrentfilenamesrc{$item}\[torrents.ru\].torrent ";
#  for ($i=0;$i<=$#trackerlist;$i++) {$cmd.="--tracker $trackerlist[$i] "}
  $cmd.="\"$dirsrc{$item}\" ";

  print "$cmd\n";
  system($cmd);
}

