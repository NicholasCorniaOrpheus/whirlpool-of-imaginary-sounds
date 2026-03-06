import urllib.request
import os


def get_biblioteca_digital_images(directory_path, zfill=4):
    base_url = "https://www.rae.es/sites/default/files/biblioteca/jpeg/"

    print("Insert Biblioteca Digital item id (ex. RM_67:")
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
            opener = urllib.request.build_opener()
            opener.addheaders = [("User-Agent", "Mozilla/5.0")]
            urllib.request.install_opener(opener)
            urllib.request.urlretrieve(image_url, image_filename)
        except Exception as e:
            print(f"Failed to download {image_url}: {e}")
