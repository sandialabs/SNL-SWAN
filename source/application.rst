.. _application:

Application
===============

In the following sections, descriptions on how to run the SNL-SWAN code are given. For additional information regarding how to set up and run and SWAN model, please refer to the SWAN documentation available online at http://swanmodel.sourceforge.net/. 

Input File
----------
This is the SNL-SWAN input file (INPUT), which has the same settings as SWAN, as specified in the `SWAN user's manual <http://swanmodel.sourceforge.net/>`_, with the ADDITION OF THE SET OBCASE LINE THAT SETS WHICH VERSION OF SNL-SWAN IS RUN.

SET OBCASE=0	
~~~~~~~~~~~~
Baseline SWAN, uses the SWAN constant transmission obstacle formulation.

SET OBCASE=1		
~~~~~~~~~~~~
SNL-SWAN Power Matrix, uses the WEC power matrix to calculate the effective transmission coefficient, a constant value across all frequencies. This case requires POWER.TXT which is described in the power matrix section below.

SET OBCASE=2 		
~~~~~~~~~~~~
SNL-SWAN RCW, uses the WEC power matrix to calculate the effective transmission coefficient, a constant value across all frequencies. This case requires RELATIVE_CAPTURE_WIDTH.TXT which is described in the relative capture width section below.

SET OBCASE=3 		
~~~~~~~~~~~~
SNL-SWAN Power Matrix, uses the WEC power matrix to calculate the transmission coefficient for each frequency bin. Requires POWER.TXT

SET OBCASE=4		
~~~~~~~~~~~~
SNL-SWAN RCW, uses the WEC power matrix to calculate the transmission coefficient for each frequency bin. Requires RELATIVE_CAPTURE_WIDTH.TXT


Relative Capture Width
----------------------------------
IF SNL-SWAN IS RUN WITH OPTION 2 OR 4, THE RELATIVE_CAPTURE_WIDTH.TXT FILE IS REQUIRED TO RUN. This is the WEC power performance in the form of a relative capture width curve, in two vertical columns containing one the period and the one with Relative Capture Width Curve (RCW) value. This curve can be directly copied from excel into a *.txt file, see Example RCW File section.

.. figure:: _static/Fig2.jpg
   :width: 450pt
   :align: center

Wave Periods
~~~~~~~~~~~~
The wave period should be defined in seconds. The wave periods should be defined in the first column of the RELATIVE_CAPTURE_WIDTH.TXT file.

Power Performance
~~~~~~~~~~~~
The RCW is a non-dimensionalized power ratio defining the WEC's power performance. The RCW values should be defined in the second column of the RELATIVE_CAPTURE_WIDTH.TXT file. 


Power Matrix
----------------------------------
IF SNL-SWAN IS RUN WITH OPTION 1 OR 3, THE POWER.TXT FILE IS REQUIRED TO RUN. This is the WEC power performance in the form of a power matrix.  The file starts with the normalization width, then the number of wave heights, followed by a list of wave heights, then the number of wave periods, followed by the list of wave periods, and finally the WEC power matrix is defined. These values can be directly copied from excel into a *.txt file, see Example Power Matrix File section.

.. figure:: _static/Fig3.jpg
   :width: 500pt
   :align: center

Normalization Width
~~~~~~~~~~~~
The normalization width value should usually be the WEC's physical dimension. This term is used to normalize the absorbed power value from the matrix by the width over which it is absorbed.  This gives a value in terms of power per unit width which can be generally applied to an obstacle of any size. This is the first term defined in the POWER.TXT file.

Wave Heights
~~~~~~~~~~~~
The number of wave heights used to define the WEC power matrix is first defined, and then the wave heights defining the WEC power matrix are specified. Wave heights should be defined in meters. This is the second term defined in the POWER.TXT file.

Wave Periods
~~~~~~~~~~~~
The number of wave periods used to define the WEC power matrix is first defined, and then the wave periods defining the WEC power matrix are specified. The wave periods should be defined in seconds. This is the third term defined in the POWER.TXT file.

Power Performance
~~~~~~~~~~~~
The WEC power matrix should be defined in kW. This is the last term defined in the POWER.TXT file.


Sample Input Files
---------------------

INPUT
~~~~~~~~~~~~
* Here is a sample input file :download:`INPUT <_static/INPUT>`

RCW
~~~~~~~~~~~~
* Here is a sample Relative Capture Width file :download:`RCW <_static/Relative_Capture_Width.txt>`

Power Matrix
~~~~~~~~~~~~
* Here is a sample Power Matrix file :download:`PowerMatrix <_static/Power.txt>`
