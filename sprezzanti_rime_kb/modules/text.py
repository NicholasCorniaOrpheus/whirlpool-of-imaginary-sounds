# Scripts for parsing texts of the poems

import os
import frontmatter  # Extract YAML properties from Obsidian Markdown notes.
import json, yaml


def extract_yaml_and_text_from_markdown(directory_path):
    for filename in os.listdir(directory_path):
        if filename.endswith(".md"):  # Check if file is Markdown
            filepath = os.path.join(directory_path, filename)
            yml_filepath = os.path.join(directory_path, filename.replace(".md", ".yml"))
            txt_filepath = os.path.join(directory_path, filename.replace(".md", ".txt"))
            file = open(filepath, "r", encoding="utf-8")
            yml_file = open(yml_filepath, "w", encoding="utf-8")
            txt_file = open(txt_filepath, "w", encoding="utf-8")

            metadata, content = frontmatter.parse(
                file.read()
            )  # Separate metadata from content
            # Save the properties on a separate YAML file
            yaml.dump(metadata, yml_file, encoding="utf-8", allow_unicode=True)
            # Save the content in a TXT file
            txt_file.write(content)
            file.close()
            yml_file.close()
            txt_file.close()


def extract_metadata_from_obsidian_notes(
    directory_path,
):  # This scripts extracts metadata information from a series of Markdown files, generating an enriched JSON with separate verses and other functionalities.
    for filename in os.listdir(directory_path):
        if filename.endswith(".md"):  # Check if file is Markdown
            filepath = os.path.join(directory_path, filename)
            file = open(filepath, "r", encoding="utf-8")
            properties = frontmatter.load(file).metadata
            # TO BE CONTINUED
            # Get rid of [[]] from obsidian
            # Separate verses according to rhyme_scheme
