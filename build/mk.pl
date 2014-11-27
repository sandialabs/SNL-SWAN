#!/usr/bin/perl
use File::Copy;


# wrapper for making SNL-SWAN
# Automatically finds architechture, configures macros, and runs make


$os = $^O;
#print $os;

$arg = $ARGV[0];  # ser, omp, mpi, etc.

if ($os =~ /WindowsNT/i || $os =~ /MSWin32/i) {
  $file1 = "Makefile.win";
  $make_command="nmake"
} else {
  $file1 = "Makefile.unix";
  $make_command="make"
}


# use correct Makefile
$file2 = "Makefile";
copy($file1, $file2); # or die "File cannot be copied.";


# create an empty macros file
$macfile="macros.inc";
if (-e $macfile ) {
  unlink($macfile); # aka delete
}
open($fh,'>',$macfile); # or die "cannot open macros.inc";
close $fh;


# run make with given arguments
system($make_command, "config");
if ($#ARGV < 0) {
  system($make_command);
} else {
  system($make_command, $arg);
}
