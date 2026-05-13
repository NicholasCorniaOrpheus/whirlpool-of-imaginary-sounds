import urllib.request
import os
import cv2

example = "https://viewerd.kbr.be/display/A/0/5/8/6/6/7/2/0000-00-00_01/zoomtiles/BE-KBROO_A-0586672_0000-00-00_01_0003/0-0-0.jpg"


def get_kbr_images(directory_path, zfill=4):
    base_url = "https://viewerd.kbr.be/display"

    print("Insert KBR item id (different from URI) like A-0586672:")
    item_id = input()
    # split letters, excluding dash
    splitted = item_id.replace("-", "")
    splitted = [character for character in splitted]
    print("Insert KBR prefix (like BE-KBR00):")
    prefix = input()
    print("Insert object number (like 01 or 02)")
    object_number = input()
    print("Insert starting page:")
    start_page = int(input())
    print("Insert ending page:")
    end_page = int(input())

    print("Starting download in local tmp directory...")

    # create item directory if not present
    if not os.path.exists(os.path.join(directory_path, item_id + "_" + object_number)):
        os.makedirs(os.path.join(directory_path, item_id + "_" + object_number))
    for page in range(start_page, end_page + 1):
        page_str = str(page).zfill(zfill)
        dashed_prefix = "/".join(splitted)
        base_iiif_image = f"0000-00-00_{object_number}"
        image_url_left = f"{base_url}/{dashed_prefix}/{base_iiif_image}/zoomtiles/{prefix}_{item_id}_{base_iiif_image}_{page_str}/0-0-0.jpg"
        image_url_right = f"{base_url}/{dashed_prefix}/{base_iiif_image}/zoomtiles/{prefix}_{item_id}_{base_iiif_image}_{page_str}/0-1-0.jpg"

        image_filename_left = os.path.join(
            directory_path, item_id + "_" + object_number, f"{item_id + "_" + object_number}_{page_str}_L.jpg"
        )
        image_filename_right = os.path.join(
            directory_path, item_id + "_" + object_number, f"{item_id + "_" + object_number}_{page_str}_R.jpg"
        )

        urllib.request.urlretrieve(image_url_left, image_filename_left)
        urllib.request.urlretrieve(image_url_right, image_filename_right)

        # merge two images using OpenCV
        img_left = cv2.imread(image_filename_left)
        img_right = cv2.imread(image_filename_right)

        img_h = cv2.hconcat([img_left, img_right])
        image_filename = os.path.join(
            directory_path, item_id + "_" + object_number, f"{item_id + "_" + object_number}_{page_str}.jpg"
        )
        cv2.imwrite(image_filename, img_h)

    # remove splitted images
    for filename in os.listdir(os.path.join(directory_path,item_id + "_" + object_number)):
        if filename.endswith("_L.jpg") or filename.endswith("_R.jpg"):
            os.remove(os.path.join(directory_path, filename))
