# Main script for music collection

"""
Example:
http://www.bibliotecamusica.it/cmbm/images/ripro/gaspari/_S/S285/S285_031.jpg

"""

import sys

sys.path.append("./modules")

from modules.gaspari import *
from modules.biblioteca_digital import *
from modules.kbr import *


directory_path = "./tmp"

# get_biblioteca_digital_images(directory_path)

print(
    "Which digital library would you like to webscrape? \n 1. Gaspari Online \n 2. KBR"
)
choice = int(input())

if choice == 1:
    get_gaspari_images(directory_path)
elif choice == 2:
    get_kbr_images(directory_path)
else:
    pass
