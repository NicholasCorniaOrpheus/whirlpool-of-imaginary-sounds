"""
Data mining from the [Italian Academies Database](https://bl.iro.bl.uk/concern/datasets/486ed324-d183-4f9f-a44f-c657fc64c5e4) 
"""

import sys

sys.path.append("./modules")

from modules.utilities import *

"""
Data structure:
- Academy
	- metadata (ids, city, motto, dates, emblem )
	- notes (references as --- divided text string)
	- members (as block of elements "ItacPersonItem")
	- ?

- Person
	- metadata (ids, name, gender, title, dates, nationality)
	- role
	- citation (authorship of cataloguer?)
- Work
	- metadata (ids, title, publication)
	- subject
	- illustration
	- marginalia
	- dedicatees
	- censors
	- artists
	- illustrators
	- printers
	- academy


"""
