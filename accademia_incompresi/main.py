"""
A series of scripts to interact programmatically with the data of the Accademia degli Incompresi

"""

import sys

sys.path.append("./modules")

from modules.utilities import *
from modules.iad import *

import xmltodict

### DATA ###

iad_directory = os.path.join("italian_academies_database", "iad-xml", "records")

mappings_directory = os.path.join("italian_academies_database", "mappings")

item_types = {
    "ItacAcademyItem": {"name": "academy", "mapping": "iad_academy_mapping.csv"},
    "ItacPersonItem": {"name": "person", "mapping": "iad_person_mapping.csv"},
    "ItacWorkItem": {"name": "work", "mapping": "iad_work_mapping.csv"},
}

### FUNCTIONS


def generate_iad_json():
    iad_dict = []
    for d in os.scandir(iad_directory):
        if os.path.isdir(d.path):
            if d.name in item_types.keys():
                print(f"Current directory: {d.name}")
                iad_mapping = csv2dict(
                    os.path.join(mappings_directory, item_types[d.name]["mapping"])
                )
                type = item_types[d.name]["name"]
                for file in os.scandir(d.path):
                    if file.name.endswith(".xml"):
                        # print(f"Current XML file: {file.name}")
                        # Importing the XML as dictionary via xmltodict library
                        xml_file = open(file.path, "r")
                        xml = xml_file.read()
                        xml_dict = xmltodict.parse(xml)
                        iad_dict.append(xml_dict)

    # Export JSON version in iad_directory
    dict2json(iad_dict, os.path.join(iad_directory, "iad.json"))


def persons_analysis():
    # save persons dictionary
    persons_dict = {"person": parse_iad_persons(iad_dict), "statistics": {}}

    dict2json(persons_dict, os.path.join(iad_directory, "iad_person.json"))


def academies_analysis():
    # save academies
    academies_dict = {"academy": parse_iad_academies(iad_dict), "statistics": {}}

    dict2json(academies_dict, os.path.join(iad_directory, "iad_academy.json"))


### TEST ###

print(f"Would you like to import data from XML files? y/n")
answer = input()
if answer == "y":
    generate_iad_json()
else:
    iad_json_filepath = os.path.join(iad_directory, "iad.json")
    print(f"Importing {iad_json_filepath}...")
    iad_dict = json2dict(iad_json_filepath)

    print(f"Would you like to reparse person items? y/n")
    answer = input()
    if answer == "y":
        print("Persons analysis:")
        persons_analysis()
    print(f"Would you like to reparse academy items? y/n")
    answer = input()
    if answer == "y":
        print("Academy analysis:")
        academies_analysis()
