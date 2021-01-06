import cv2
import os


def main():
    path = "../../dataset/CUSTOM/training_hr_images"
    out_path = "../../dataset/CUSTOM/training_lr_images"
    scale = [2, 3, 4]

    for file in os.listdir(path):
        image_path = os.path.join(path, file)
        image = cv2.imread(image_path)
        for s in scale:
            lr_image = cv2.resize(
                image, (int(image.shape[1]/s), int(image.shape[0]/s)))
            out_dir_path = os.path.join(out_path, f'X{s}')
            out_image_path = os.path.join(out_dir_path, f'{file[:-4]}x{s}.png')
            print(out_image_path)
            cv2.imwrite(out_image_path, lr_image)


if __name__ == "__main__":
    main()
