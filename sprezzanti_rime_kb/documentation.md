# Sprezzanti Rime KB

Knowledge Base of poems by members of the imaginary Accademia degli Incompresi. This dataset is part of the Whirlpool of Imaginary Sounds artistic research project.

## Resources

| Name                                                                                                           | Description                                                                                                                                                                                                                           | Formats   | Repository   |
| -------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------- | ------------ |
| [biblioteca_italiana](https://github.com/linhd-postdata/biblioteca_italiana)                                   | This corpus is a subset in XML TEI format of the available poems in the poetry corpus from the Biblioteca Italiana<br><br>It contains more than 18000 works from over 159 authors.                                                    | JSON, TEI | GitHub       |
| [wikisource-italian-poems](https://huggingface.co/datasets/mattiaferrarini/wikisource-italian-poems/tree/main) | This dataset is composed of 18,000 Italian poems from 680 authors scraped from Wikisource, to whom all credits are due. The sole purpose of the dataset is to make the content of Wikisource more accessible for use in data science. | JSON      | Hugging Face |

### [[Liber Liber]]

https://liberliber.it/autori/

Several TXT and PDF transcriptions of several poets, some of them relevant for the project.

### [[Hugging Face]]

Repository for [[Large Language Model|LLM]] models and datasets.

### [[GitHub]]

### [[POSTDATA - Poetry Ontology]]

#### [[Averell - Python Library for Poetry]]

Averell is a Python library allowing to re-parse TEI encoded resources from several corpora, such as [[Biblioteca Italiana]], in a unified PoetryLab JSON format.

[Documentation](https://averell.readthedocs.io/en/latest/readme.html)

[GitHub repository](https://github.com/linhd-postdata/averell)

#### [[Horace - PoetryLab JSON to POSTDATA RDF]]

[Documentation](https://horace.readthedocs.io/)

[GitHub repository](https://github.com/linhd-postdata/horace)

## Data structures

### RDF

- Wikidata properties (see [Orlando Furioso](https://www.wikidata.org/wiki/Q48922) and [Abel et Caïn](https://www.wikidata.org/wiki/Q18965649) from Baudelaire's Les Fleurs du mal.)
- [[Dublin Core]]
- [[CIDOC-CRM ontology]]
- [[SKOS]]
- [[Schema.org]]
- [OntoPoetry](https://github.com/linhd-postdata/OntoPoetry/blob/master/Core/documentation/ontology.ttl) v.2.0 of the POSTDATA. The problem is that http://postdata.linhd.uned.es/ontology/postdata-core# is not active anymore...

- XML-TEI schema
- Custom PoetryLab JSON, linked to Obsidian properties and pages.

## References

  Gonzalez-Blanco, Elena, Salvador Ros Muñoz, Pablo Ruiz Fabo, Maria Luisa Diez Platas, Helena Bermudez, Agustin Caminero, Clara Martinez Canto, and Luciana Ayciriex. 2018. “Poetry and Digital Humanities Making interoperability	possible	in a Divided World of Digital Poetry: POSTDATA Project,” December. doi:10.5281/ZENODO.2203806.
  
  González-Blanco García, Elena, and Salvador Ros. 2022. “Applying Ontology Engineering to Build a Poetry Domain Ontology.” Semantic Web – Interoperability, Usability, Applicability an IOS Press Journal. https://www.semantic-web-journal.net/content/applying-ontology-engineering-build-poetry-domain-ontology.
  
  González-Blancob, Elena, Omar Khalila, Salvador Rosa, Mirella de Sistoa, Laura Hernándeza, and others. 2022. “OntoPoetry: Postdata Ontology for Poetry Domain.” POSTADATA Project, Scuela Técnica Superior de Informática, UNED, Madrid.
