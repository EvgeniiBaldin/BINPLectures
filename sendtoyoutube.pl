#!/usr/bin/perl -w
require data;

$basedir="/Space/Lectures/torrent/";
$STR{QCD}=2; #QCD_Lectures_Fadin_Spring_2014
$STR{QED}=1; #QED_Lectures_Fadin_Autumn_2013
$STR{SUSY}=1; #SUSY_Lectures_Chernyak_Autumn_2013
$STR{EW}=1; #EW_Lectures_Chernyak_Autumn_2013
$STR{HEP}=0; #HEP_Lectures_Serbo_Autumn_2013
$STR{HEPs}=2; #Introduction_to_HEP_Seminars_Skovpen
$STR{NaCD}=0; #Nonlinear_and_Chaotic_Dynamics_Lectures_Zhirov_Spring_2014
$STR{GG}=0; #Gamma-Gamma_Serbo_Lecture
$STR{NUC}=2; #Nucleus_Dmitriev_Lecture
$STR{STR}=0; #Strings_Lectures_Pomeransky

$ext="mp4";
foreach $STR (keys %STR) {
  if ($STR{$STR}!=1) {next;}
  for ($i=1;$i<=$number{$STR};$i++) {
    unless (defined $name{"$STR-$i"}) {next;} 
    $cmd="google youtube post ";
    $cmd.="--category=\"".$category{$STR}."\" ";
    $cmd.="--tags=\"".$tags{$STR}."\" ";
    $cmd.="--summary \"".$summary{"$STR-$i"}."\" ";
    $cmd.="\"$basedir".$dir1080p{$STR}."/".$name{"$STR-$i"}.".$ext\" ";
    #  $cmd.="http://www.youtube.com/channel/UCglW_rYzVGwnzUsWDxbyS_w";
    print "$cmd\n";
    system "$cmd\n";
  }
}
