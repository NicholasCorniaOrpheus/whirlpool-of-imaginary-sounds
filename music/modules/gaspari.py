import urllib.request
import os


def get_gaspari_images(directory_path, zfill=3):
    base_url = "http://www.bibliotecamusica.it/cmbm/images/ripro/gaspari/_S/"

    print("Insert Gaspari item id (collocazione without dot):")
    item_id = input()
    print("Insert starting page:")
    start_page = int(input())
    print("Insert ending page:")
    end_page = int(input())

    print("Starting download in local tmp directory...")

    # create item directory if not present
    if not os.path.exists(os.path.join(directory_path, item_id)):
        os.makedirs(os.path.join(directory_path, item_id))
    for page in range(start_page, end_page + 1):
        page_str = str(page).zfill(zfill)
        image_url = f"{base_url}{item_id}/{item_id}_{page_str}.jpg"

        image_filename = os.path.join(
            directory_path, item_id, f"{item_id}_{page_str}.jpg"
        )

        print(f"Downloading {image_url} to {image_filename}...")
        try:
            urllib.request.urlretrieve(image_url, image_filename)
        except Exception as e:
            print(f"Failed to download {image_url}: {e}")
