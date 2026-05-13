import urllib.request
import os


def get_gaspari_images(directory_path, zfill=3):
    base_url = "http://www.bibliotecamusica.it/cmbm/images/ripro/gaspari"

    print("Insert Gaspari item id:")
    item_id = input()
    print("Insert Gaspari letter:")
    letter = input()
    if len(letter) == 1:
        letter = "_" + letter
    print("Insert starting page:")
    start_page = int(input())
    print("Insert ending page:")
    end_page = int(input())

    print("Starting download in local tmp directory...")

    # initializing multiple partbooks case
    partbook_letters = ["A", "B", "C", "D", "E", "F", "G"]
    partbook_letter_index = 0
    partbook_page = 1

    # create item directory if not present
    if not os.path.exists(os.path.join(directory_path, item_id)):
        os.makedirs(os.path.join(directory_path, item_id))
    for page in range(start_page, end_page + 1):
        page_str = str(page).zfill(zfill)
        image_url = f"{base_url}/{letter}/{item_id}/{item_id}_{page_str}.jpg"

        image_filename = os.path.join(
            directory_path, item_id, f"{item_id}_{page_str}.jpg"
        )

        prefixes = ["", "IBc_"]

        found = False
        for prefix in prefixes:
            # Try all the possible combinations
            filename = f"{prefix}{item_id}_{page_str}.jpg"
            image_url = f"{base_url}/{letter}/{item_id}/{filename}"
            try:
                urllib.request.urlretrieve(image_url, image_filename)
                print(f"Downloading {image_url} to {image_filename}...")
                found = True
                break
            except urllib.error.HTTPError as e:
                print(filename)
                continue

        if found == False:
            print(
                f"Could not find image URL for {page}... Trying with multiple partbooks version:"
            )
            # Multiple partbooks with letters case
            while found is not True:
                partbook_page_str = str(partbook_page).zfill(zfill)
                filename = f"{prefix}{item_id}{partbook_letters[partbook_letter_index]}_{partbook_page_str}.jpg"
                image_url = f"{base_url}/{letter}/{item_id}/{filename}"
                try:
                    urllib.request.urlretrieve(image_url, image_filename)
                    print(f"Downloading {image_url} to {image_filename}...")
                    found = True
                    partbook_page += 1
                except urllib.error.HTTPError as e:
                    # Reset page counter and switch to next letter
                    partbook_page = 1
                    partbook_letter_index += 1
