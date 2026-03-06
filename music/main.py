# Main script for music collection

"""
Example:
http://www.bibliotecamusica.it/cmbm/images/ripro/gaspari/_S/S285/S285_031.jpg

"""

import sys

sys.path.append("./modules")

from modules.gaspari import *
from modules.biblioteca_digital import *


directory_path = "./tmp"

get_biblioteca_digital_images(directory_path)
