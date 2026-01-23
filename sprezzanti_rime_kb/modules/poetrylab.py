# Averell and Horace - PoetryLab interactive scripts


import averell

# Documentation page: https://averell.readthedocs.io/en/latest/usage.html#
import horace

# Scarse documentation: https://github.com/linhd-postdata/horace
import pandas as pd

from rdflib import Graph, URIRef, BNode, Literal, Namespace
from rdflib.namespace import RDF, XSD, RDFS

# definition of FAAM external ID namespaces
WD = Namespace("http://www.wikidata.org/entity/")
GNames = Namespace("https://www.geonames.org/")
IMSLP = Namespace("https://imslp.org/wiki/")
RISM = Namespace("https://rism.online/")
VIAF = Namespace("https://viaf.org/viaf/")
CPDL = Namespace("https://www.cpdl.org/wiki/index.php/")  # Choral Wiki
SCHEMA = Namespace("http://schema.org/")
SKOS_ref = Namespace("http://www.w3.org/2009/08/skos-reference/skos.html#")
SKOS_core = Namespace("http://www.w3.org/2004/02/skos/core#")
DCELEM = Namespace("http://purl.org/dc/elements/1.1/")
DCTERMS = Namespace("http://purl.org/dc/terms/")
CIDOM_CRM = Namespace("http://cidoc-crm.org/cidoc-crm/7.1.3/")
