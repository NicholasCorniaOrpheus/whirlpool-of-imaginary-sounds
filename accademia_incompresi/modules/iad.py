"""
Data mining from the [Italian Academies Database](https://bl.iro.bl.uk/concern/datasets/486ed324-d183-4f9f-a44f-c657fc64c5e4) 
"""

import sys

sys.path.append("./modules")

from modules.utilities import *

import xml.etree.ElementTree as ET

from collections import (
	defaultdict,
)  # allow you to create out-of-the-box nested dictionaries without worring about KeyError

import dpath  # library for XPath like access of nested dictionaries! Very useful!

import random

"""
TO DO:

- [ x ] Parse XML metadata into custom dictionary JSON
- [ ] query wikidata in order to identify obejct based on their type (instance of) and (contains formatted label)
- [ ] enhance data via SPARQL
- [ ] Ingest missing data using SPARQL Wikidata API and add reference IAD database.

"""

def parse_iad_persons(iad_dict, iad_person_item="ItacPersonItem"):
	# Filter according to item type
	iad_persons = list(filter(lambda x: iad_person_item in x.keys(), iad_dict))
	print(f"Found {len(iad_persons)} persons in the IAD database")
	x = random.randint(0, len(iad_persons))
	print(f"Sample person: {iad_persons[x]}")
	malformatted_elements = 0

	persons_list = []

	for person in iad_persons:
		new_person = {}
		# get identifiers
		new_person["iad_person_id"] = int(dpath.get(person, "ItacPersonItem/@PersonId"))
		new_person["iad_record_id"] = dpath.get(person, "ItacPersonItem/@RecordId")
		# Get biographical data
		try:
			new_person["family_name"] = str(dpath.get(person, "ItacPersonItem/Surname"))
		except KeyError:
			malformatted_elements += 1
			new_person["family_name"] = ""
		try:
			new_person["name"] = str(dpath.get(person, "ItacPersonItem/Forename"))
		except KeyError:
			malformatted_elements += 1
			new_person["name"] = ""
		new_person["label"] = f"{new_person["name"]} {new_person["family_name"]}"
		new_person["aliases"] = []
		try:
			if type(dpath.get(person, "ItacPersonItem/AlternativeName")) == list:
				for alias in dpath.get(person, "ItacPersonItem/AlternativeName"):
					try:
						alternative_forename = alias["AlternativeForename"]
					except Exception:
						alternative_forename = ""
					try:
						alternative_family_name = alias["AlternativeSurename"]
					except Exception:
						alternative_family_name = ""

					new_person["aliases"].append(
						{
							"iad_alias_name": alternative_forename,
							"iad_alias_family_name": alternative_family_name,
						}
					)
			else: # unique case
				try:
					alternative_forename = dpath.get(person,"ItacPersonItem/AlternativeName/AlternativeForename")
					
				except KeyError:
					alternative_forename = ""
				try:
					alternative_family_name = dpath.get(person,"ItacPersonItem/AlternativeName/AlternativeSurename")
				except KeyError:
					alternative_family_name = ""

				new_person["aliases"].append({"iad_alternative_name": alternative_forename, "iad_alternative_family_name": alternative_family_name }) 


		except KeyError:
			malformatted_elements += 1
		try:
			new_person["gender"] = dpath.get(person, "ItacPersonItem/Gender")
		except KeyError:
			malformatted_elements += 1
		try:
			new_person["date_of_birth"] = [string.strip() for string in dpath.get(
				person, "ItacPersonItem/StartDate"
			).split(".")]
		except Exception:
			malformatted_elements += 1
		try:
			new_person["date_of_death"] = [string.strip() for string in dpath.get(
				person, "ItacPersonItem/EndDate"
			).split(".")]
		except Exception:
			malformatted_elements += 1
		try:
			dpath.new(
				new_person,
				"country_of_citizenship/iad_nationality_id",
				int(dpath.get(person, "ItacPersonItem/Nationality/@NationalityId")),
			)
		except KeyError:
			malformatted_elements += 1
		try:
			dpath.new(
				new_person,
				"iad_role",
				dpath.get(person, "ItacPersonItem/Role").split("|"),
			)
		except AttributeError:
			malformatted_elements += 1
		# get notes
		try:
			dpath.new(
				new_person,
				"references/iad_notes",
				str(dpath.get(person, "ItacPersonItem/Notes")),
			)
		except KeyError:
			malformatted_elements += 1

		persons_list.append(new_person)

	print(f"Number of malformatted or missing elements: {malformatted_elements}")

	return persons_list


def parse_iad_academies(iad_dict,iad_academy_item="ItacAcademyItem"):
	# Filter according to item type
	iad_academies = list(filter(lambda x: iad_academy_item in x.keys(), iad_dict))
	print(f"Found {len(iad_academies)} academies in the IAD database")
	x = random.randint(0, len(iad_academies))
	print(f"Sample academy: {iad_academies[x]}")
	malformatted_elements = 0

	academies_list = []

	for academy in iad_academies:
		new_academy = {}
		# get identifiers
		new_academy["iad_academy_id"] = int(dpath.get(academy, "ItacAcademyItem/@AcademyId"))
		new_academy["iad_record_id"] = dpath.get(academy, "ItacAcademyItem/@RecordId")
		# Get biographical data
		new_academy["iad_name"] = dpath.get(academy,"ItacAcademyItem/Name")
		# rewrite academy name according to "Name (Accademia dei)" syntax
		try:
			new_academy["label"] = str(new_academy["iad_name"].split("(")[1].replace(")","").strip() + " " + new_academy["iad_name"].split("(")[0]).strip()
		except IndexError: # simple case
			new_academy["label"] = new_academy["iad_name"]
		new_academy["aliases"] = []
		try:
			if type(dpath.get(academy, "ItacAcademyItem/AlternativeName")) == list():
				for alias in dpath.get(academy, "ItacAcademyItem/AlternativeName"):
					try:
						new_person["aliases"].append(
						{
							"iad_alias": alias["AlternativeName"]
						}
					)
					except KeyError:
						pass 
			else: # unique case
				try:
					new_academy["aliases"].append({"iad_alias": dpath.get(academy,"ItacAcademyItem/AlternativeName")})
				except KeyError:
					pass


		except KeyError:
			malformatted_elements += 1

		# dates
		try:
			new_academy["inception"] = [string.strip() for string in dpath.get(
				academy, "ItacAcademyItem/StartDate"
			).split(".")]
		except Exception:
			malformatted_elements += 1
		try:
			new_academy["dissolved"] = [string.strip() for string in dpath.get(
				academy, "ItacAcademyItem/EndDate"
			).split(".")]
		except Exception:
			malformatted_elements += 1
			
		 #location
		try:
			dpath.new(new_academy,"location/iad_city_id",int(dpath.get(academy,"ItacAcademyItem/City/@CityId")))
		except KeyError:
			malformatted_elements += 1

		try:
			dpath.new(new_academy,"location/iad_label/it",dpath.get(academy,"ItacAcademyItem/City/CityItalianName"))
		except KeyError:
			malformatted_elements += 1

		try:
			dpath.new(new_academy,"location/iad_label/en",dpath.get(academy,"ItacAcademyItem/City/CityEnglishName"))
		except KeyError:
			malformatted_elements += 1

		# emblem and motto

		try:
			dpath.new(new_academy,"emblem/iad_description",dpath.get(academy,"ItacAcademyItem/EmblemDescription"))

		except KeyError:
			malformatted_elements += 1

		try:
			dpath.new(new_academy,"emblem/iad_image_id",dpath.get(academy,"ItacAcademyItem/EmblemImage/@ImageId"))
			dpath.new(new_academy,"emblem/iad_image_filename",dpath.get(academy,"ItacAcademyItem/EmblemImage"))

		except KeyError:
			malformatted_elements += 1

		try:
			dpath.new(new_academy,"motto/iad_description",dpath.get(academy,"ItacAcademyItem/Motto"))

		except KeyError:
			malformatted_elements += 1

		# get members
		try:
			person_items = dpath.get(academy,"ItacAcademyItem/ItacPersonItem")

			new_academy["has_member"] = []

			if type(person_items) == list:  # multiple members
				for person in person_items:
					# append member's information
					try:
						person_id = int(person["@PersonId"])

					except KeyError:
						print("Wrong formatting person id")
						input()

					try:
						person_nickname = person["Nickname"]

					except KeyError:
						person_nickname = ""

					try:
						person_motto = person["Motto"]

					except KeyError:
						person_motto = ""

					try:
						person_emblem_description = person["PersonEmblemDescription"]

					except KeyError:
						person_emblem_description = ""

					try:
						person_emblem_image = person["PersonEmblemImage"]

					except KeyError:
						person_emblem_image = ""


					new_academy["has_member"].append({
						"iad_person_id": person_id,
						"iad_pseudonym": person_nickname,
						"motto": person_motto,
						"emblem": {"iad_description": person_emblem_description, "iad_image_id": person_emblem_image }
						})
			else: # single member case
				try:
					person_id = int(person_items["@PersonId"])

				except KeyError:
					print("Wrong formatting person id")
					input()

				try:
					person_nickname = person_items["Nickname"]

				except KeyError:
					person_nickname = ""

				try:
					person_motto = person_items["Motto"]

				except KeyError:
					person_motto = ""

				try:
					person_emblem_description = person_items["PersonEmblemDescription"]

				except KeyError:
					person_emblem_description = ""

				try:
					person_emblem_image = person_items["PersonEmblemImage"]

				except KeyError:
					person_emblem_image = ""


				new_academy["has_member"].append({
					"iad_person_id": person_id,
					"iad_pseudonym": person_nickname,
					"motto": person_motto,
					"emblem": {"iad_description": person_emblem_description, "iad_image_id": person_emblem_image }
					})

		except KeyError:
			malformatted_elements += 1



		# get notes
		try:
			dpath.new(
				new_academy,
				"references/iad_notes",
				str(dpath.get(academy, "ItacAcademyItem/Notes")),
			)
		except KeyError:
			malformatted_elements += 1

		academies_list.append(new_academy)

	print(f"Number of malformatted or missing elements: {malformatted_elements}")

	return academies_list








	 

def parse_iad_works(iad_dict,iad_work_item="ItacWorkItem"):
	# Filter according to item type
	iad_works = list(filter(lambda x: iad_work_item in x.keys(), iad_dict))
	print(f"Found {len(iad_works)} works in the IAD database")
	x = random.randint(0, len(iad_works))
	print(f"Sample work: {iad_works[x]}")
	malformatted_elements = 0

	works_list = []

	for work in iad_works:
		new_work = {}
		# get identifiers
		new_work["iad_work_id"] = int(dpath.get(work, "ItacWorkItem/@WorkId"))
		new_work["iad_record_id"] = dpath.get(work, "ItacWorkItem/@RecordId")
		# Get biographical data

	pass

def parse_iad_xml_item(xml_dict, iad_mapping, type, separator="/"):
	item = defaultdict(dict)

	# print(f"IAD dictionary: {xml_dict}")
	# input()

	""" # NOT WORKING EASILY, beacuse of combination of list and dictionary...
	for element in iad_mapping:
		print(f"Current element: {element}")
		# Get element path
		if element["xml_path"] == "":  # create JSON field without content
			if element["json_path"] == "type":
				item["type"] = type
			elif element["is_list"] is True:
				dpath.new(
					item, element["json_path"], []
				)  # using dpath for new items, works like XPath
			else:
				dpath.new(item, element["json_path"], {})

		elif element["xml_path"] == "root":
			if element["attribute"] != "":
				dpath.new(item,element["json_path"],xml_dict[element["xml_element"]][f"@{element["attribute"]}"])
			else:
				dpath.new(item,element["json_path"],xml_dict[element["xml_element"]])

		else:
			# check for multiple objects
			try:
				if element["attribute"] != "":
					json_root = element["json_path"].separate("/")[0]
					if item[json_root].isinstance(list):
						print("To be continued...")

					else:
						dpath.new(item,element["json_path"],dpath.get(xml_dict,f"{element["xml_path"]}/{element["xml_element"]}/@{element["attribute"]}"))
				else:
					# check if root element is list
					if item[element["json_path"].separate("/")[0]].isinstance(list):
						print("To be continued...")
					else: # single item case
						if element["separator"] == "":
							if element
							dpath.new(item,element["json_path"],dpath.get(xml_dict,f"{element["xml_path"]}/{element["xml_element"]}"))
			except KeyError:
				pass
	"""

	return item
