SNL-SWAN GitHub Site:
=====================
Repository for the development of SNL-SWAN, includes the modified SWAN4072ABCDE source code and the most 
recently compiled executable of SNL-SWAN


SNL_SWAN_alpha.exe 
	New interpolation scheme, because original interpolation scheme did not work for RCW switch 2
	Line calling on width.txt file changed 
	(I believe these were the updates, please correct this it's incorrect)

Alpha Run Instructions:
	Specify SNL-SWAN switch (0 = baseline, 1 = power matrix, 2 = RCW) in width.txt file
	Include additional text files depending on switch used (width.txt, period.txt, 
		waveheight.txt, power.txt, relative capture width.txt)

Compile Instructions:
	Use MS Visual Studio 2008 and Intel FORTRAN Compiler 11.0
	OMIT swanhcat.for file from SWAN to compile
	Additional/Edited SNL-SWAN files include: swanser.for swanmain.for and Bivariate_1.F90





Code updates not on GitHub site:
================================
SNL_SWAN_v3.exe
	Switch 0, which allows users to run the baseline sWAN transmission coefficent

SNL_SWAN_v2.exe
	Switch 1, which allows users to import an RCW curve in addition to the Power Matrix

SNL_SWAN_v1.exe
	This is the first compiled version of SNL-SWAN which allows users to import a Power Matrix
