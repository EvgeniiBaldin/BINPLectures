#!/usr/bin/perl -w
require data;
$bin="transmission-create ";
$rutrackerdir="../rutracker";

foreach $item (keys %dir) {
# 720p tracker
# rutracker
  $cmd="cd $torrentpath ; $bin --comment \"$comment720p{$item}\" --outfile $rutrackerdir/$torrentfilename720p{$item}\[torrents.ru\].torrent ";
  $cmd.="\"$dir720p{$item}\" ";
  print "$cmd\n";
  system($cmd);

# 720p tracker
# https://openbittorrent.com/
  $cmd="cd $torrentpath ; $bin --comment \"$comment720p{$item}\" --outfile $torrentfilename720p{$item}.torrent ";
  for ($i=0;$i<=$#trackerlist;$i++) {$cmd.="--tracker $trackerlist[$i] "}
  $cmd.="\"$dir720p{$item}\" ";
  print "$cmd\n";
  system($cmd);


# 1080p tracker
# rutracker
  $cmd="cd $torrentpath ; $bin --comment \"$comment1080p{$item}\" --outfile $rutrackerdir/$torrentfilename1080p{$item}\[torrents.ru\].torrent ";
#  for ($i=0;$i<=$#trackerlist;$i++) {$cmd.="--tracker $trackerlist[$i] "}
  $cmd.="\"$dir1080p{$item}\" ";
  print "$cmd\n";
  system($cmd);

# 1080p tracker
# https://openbittorrent.com/
  $cmd="cd $torrentpath ; $bin --comment \"$comment1080p{$item}\" --outfile $torrentfilename1080p{$item}.torrent ";
  for ($i=0;$i<=$#trackerlist;$i++) {$cmd.="--tracker $trackerlist[$i] "}
  $cmd.="\"$dir1080p{$item}\" ";
  print "$cmd\n";
  system($cmd);

# src tracker
# rutracker
  $cmd="cd $torrentpath ; $bin --comment \"$commentsrc{$item}\" --outfile $rutrackerdir/$torrentfilenamesrc{$item}\[torrents.ru\].torrent ";
  $cmd.="\"$dirsrc{$item}\" ";
  print "$cmd\n";
  system($cmd);

# src tracker
# https://openbittorrent.com/
  $cmd="cd $torrentpath ; $bin --comment \"$commentsrc{$item}\" --outfile $torrentfilenamesrc{$item}\[torrents.ru\].torrent ";
  for ($i=0;$i<=$#trackerlist;$i++) {$cmd.="--tracker $trackerlist[$i] "}
  $cmd.="\"$dirsrc{$item}\" ";
  print "$cmd\n";
  system($cmd);
}

