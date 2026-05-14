"""
This script programmatically combines SVG images in a local folder to a PDF file, according to their filename number.

The script assumes that the SVG dimensions are homogeneous!
"""

from svg_text2path import Text2PathConverter
import fpdf
import os
import xml.etree.ElementTree as ET
import math
import cairosvg


def convert_svg_text2path(svg_content):
    converter = Text2PathConverter()
    return converter.converter.convert_string(svg_content)


def import_svg_files_from_directory(directory_path: str) -> list:
    """
    Args:
    directory_path (str): Relative path to directory
    Returns:
    svg_files (list): A list of svg files with their path.
    """
    svg_files = []
    for entry in os.scandir(directory_path):
        if entry.name.endswith(".svg"):
            svg_files.append(entry.path)

    return svg_files


def get_svg_dimensions(svg_file: str, pdf_unit="cm") -> dict:
    """
    Args:
    svg_file(str): Path to SVG file.
    unit(str): Default is cm.
    Returns:
    svg_dimensions(dict): Dimensions of the SVG file, with unit reference of the form {"unit": "cm", "dimensions": (x,y)}
    """
    svg_dimensions = {}
    # Import XML file
    tree = ET.parse(svg_file)
    root = tree.getroot()
    # search for file dimension, as attributes width and height in svg element.
    width = root.get("width")
    height = root.get("height")
    # extract unit if present, I am assuming homogeneous units
    units = ["cm", "mm", "in"]
    svg_dimensions["dimensions"] = [0, 0]
    svg_dimensions["unit"] = pdf_unit
    for unit in units:
        if unit in width:
            svg_dimensions["unit"] = unit
            svg_dimensions["dimensions"][0] = float(width.replace(unit, ""))
            svg_dimensions["dimensions"][1] = float(height.replace(unit, ""))
            break
    # convert svg_unit to desired one for the PDF
    if svg_dimensions["unit"] != pdf_unit:
        if pdf_unit == "cm" and svg_dimensions["unit"] == "mm":
            svg_dimensions["dimensions"] = svg_dimensions["dimensions"] / 10
        if pdf_unit == "mm" and svg_dimensions["unit"] == "cm":
            svg_dimensions["dimensions"] = svg_dimensions["dimensions"] * 10
        if pdf_unit == "cm" and svg_dimensions["unit"] == "in":
            svg_dimensions["dimensions"] = svg_dimensions["dimensions"] / 0.393701
        if pdf_unit == "in" and svg_dimensions["unit"] == "cm":
            svg_dimensions["dimensions"] = svg_dimensions["dimensions"] * 0.393701
        if pdf_unit == "mm" and svg_dimensions["unit"] == "in":
            svg_dimensions["dimensions"] = svg_dimensions["dimensions"] / 0.0393701
        if pdf_unit == "in" and svg_dimensions["unit"] == "mm":
            svg_dimensions["dimensions"] = svg_dimensions["dimensions"] * 3.93701

    svg_dimensions["unit"] = pdf_unit

    return svg_dimensions


def svgs2pdf(
    svg_files: list,
    pdf_size={"unit": "cm", "dimensions": (21, 29.7)},
    pdf_orientation="portrait",
    spacing={"unit": "cm", "dimensions": (0.5, 0.5)},
    dpi=300,
):
    """
    Args:
    svg_files (list): List of paths for svg files to be combined.
    pdf_size (dict): PDF dimension according to the `fpdf` package. Default is A4 (21x29.7 cm).
    pdf_orientation (str): PDF orientation. Default is portrait.
    spacing (dict): Spacing between individual SVG pictures in the PDF. Default is 0.1x0.1 cm.
    dpi(int): Default is 300.

    Returns:
    pdf: fpdf.FPDF object
    """
    # get max size of combined SVGs to determine how many PDFs are needed. I assume equal dimensions within the SVGs
    w = get_svg_dimensions(svg_files[0])["dimensions"][0] + spacing["dimensions"][0]
    h = get_svg_dimensions(svg_files[0])["dimensions"][1] + spacing["dimensions"][1]
    print(f"Dimensions: w = {w} cm, h = {h} cm")

    # fit to PDF size
    w_multiplier = math.floor(pdf_size["dimensions"][0] / w)
    h_multiplier = math.floor(pdf_size["dimensions"][1] / h)
    print(
        f"Number of tiles per row = {w_multiplier}, tiles per column = {h_multiplier}"
    )

    svg_per_page = w_multiplier * h_multiplier

    print(f"Svgs per page: {svg_per_page} ")

    n_pages = math.ceil(len(svg_files) / svg_per_page)

    pdf = fpdf.FPDF(
        unit=pdf_size["unit"],
        format=pdf_size["dimensions"],
        orientation=pdf_orientation,
    )

    svg_counter = 0
    row_counter = 0
    x = 0
    y = spacing["dimensions"][1]

    pdf.add_page()
    for svg_file in svg_files:
        print(f"Current file: {svg_file} ")
        svg_counter += 1
        row_counter += 1
        print(f"SVG counter: {svg_counter}")
        print(f"Row counter: {row_counter}")
        if svg_counter >= svg_per_page:
            print("Next page...")
            # reset everything
            pdf.add_page()
            svg_counter = 0
            row_counter = 0
            x = 0
            y = spacing["dimensions"][1]

        # convert svg to png
        png_filepath = "./" + svg_file.split("/")[-1].replace("svg", "png")
        svg_img = cairosvg.svg2png(url=svg_file, write_to=png_filepath, dpi=dpi)
        if row_counter >= w_multiplier:
            print("Next row...")
            # go to next row
            x = 0
            y += h
            row_counter = 0

        x += spacing["dimensions"][0]
        # position the SVG image in the right position
        pdf.image(
            png_filepath,
            x=x,
            y=y,
            w=w - spacing["dimensions"][0],
            h=h - spacing["dimensions"][1],
        )
        x += w - spacing["dimensions"][0]

        os.remove(png_filepath)

    return pdf


#### CODE ####

print(f"Insert SVG directory path:")
directory_path = input()

output_pdf_filepath = "./output.pdf"

svg_files = import_svg_files_from_directory(directory_path)

pdf = svgs2pdf(svg_files)

print(f"Saving pdf in {output_pdf_filepath}...")

pdf.output(output_pdf_filepath)
