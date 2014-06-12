#!/usr/bin/perl
use File::Copy;

$os = $^O;
#print $os;

$arg = $ARGV[0];  # ser, omp, etc.

if ($os =~ /WindowsNT/i || $os =~ /MSWin32/i) {
  $file1 = "Makefile.win";
} else {
  $file1 = "Makefile.unix";
}
$file2 = "Makefile";

copy($file1, $file2); # or die "File cannot be copied.";

$macfile="macros.inc";
if (-e $macfile ) {
  unlink($macfile); # aka delete
}
open($fh,'>',$macfile); # or die "cannot open macros.inc"; # create a blank macros file
close $fh;


if ($os =~ /WindowsNT/i || $os =~ /MSWin32/i) {
  system("nmake", "config");
  if ($#ARGV < 0) {
    system("nmake");
  } else {
    system("nmake", $arg);
  }
} else {
  system("make", "config");
  if ($#ARGV < 0) {
    system("make");
  } else {
    system("make", $arg);
  }
}
