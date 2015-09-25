.. _release_notes:

Release Notes
=============
	
SNL-SWAN v1.1 Release Notes
--------------------------------
* SNL-SWAN v1.1 development `available on GitHub <https://github.com/SNL-WaterPower/SNL-SWAN/tree/newmods>`_
* Documentation available on `SNL-SWAN website <http://snl-waterpower.github.io/SNL-SWAN/index.html>`_
* Further modification of the WEC Module

  * binary wave energy extraction as a function of incident wave direction
  * modified reflection coefficient to be frequency dependent
  * created Obcase 5, an extension of Obcase 3 for the power matrix formulation

.. Note::
	SNL-SWAN v1.1 is under development, but has some bugs. A stable tagged release coming soon!


SNL-SWAN v1.0 Release Notes
--------------------------------
* Initial release of the SNL-SWAN code
* Available as a static download on `SNL-SWAN GitHub <https://github.com/SNL-WaterPower/SNL-SWAN/releases/tag/v1.0>`_
* Documentation available in PDF
* Modified to include a WEC Module which accounts for WEC power performance

  * Imports WEC power performance as relative capture or power matrix
  * Applies energy extraction as a constant accross all incident wave periods (Obcase 0,1,2), or as a function of wave period (Obcase 3,4)
