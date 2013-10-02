SNL-SWAN Test Cases
===================

This folder is where the SNL-SWAN test cases are stored. Test cases are used the verify the functionality of any newly compiled versions 
of the code.  There is a series of automated MATLAB scripts that have been developed by SNL to quickly verify the code's functionality. 
Some of the paths may need to be redefined by the user.



SNL_SWAN_v4 - 4-29-2013
	This is a new test run using the newly compiled SNL_SWAN_v4, with changes from SEI to omit option 2 interpolation errorrs, etc

SNL_SWAN_v3 - 4-25-2013
	see below, but had to update VS 2008 and Intel copmiler, this is the first new compile, checking its functionality

SNL_SWAN_v3 - 2-8-2013
	This is newly compiled SNL_SWAN_v3 with Intel Fortran Compiler 11.0 and Microsoft Visual Studtio 2008  
	These Matlab scripts ARE automated.
	This is the first tested version on SNL-SWAN that includes 0=basesline swan, 1 = Power Matrix 2 = RCW
	NOTE: This was recomplied on 2-12-2013 when Craig from SEI determined error in Read Width.txt for Option 1

swan4072abcde - 1-10-2013
	This is newly compiled SWAN 40.72abcde with Intel Fortran Compiler 11.0 and Microsoft Visual Studtio 2008 with Ari's help.  
	These Matlab scripts ARE automated.

swan4085 - 12-12-2012
	This is newly compiled SWAN 40.85 with Intel Fortran Compiler 11.0 and Microsoft Visual Studtio 2008 with Ari's help.  
	These Matlab scripts ARE automated.

swan4085 - 6-15-2012	
	This was first ever complile of SWAN 40.85 in command line with Erick's help.  
	These Matlab files are NOT automated.