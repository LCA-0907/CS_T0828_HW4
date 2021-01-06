
# CS_T0828_HW4
Code for Selected Topics in Visual Recognition
using Deep Learning(2020 Autumn) HW4

## Hardware
ubuntu 16.04 LTS
Intel® Core™ i9-10900 CPU @ 3.70GHz x 20
RTX 2080 Ti

## Requirements
My Environment settings are below:
* Python = 3.7.9
* pandas = 1.1.3
* opencv = 4.4.0

In this work, I used RCAN model from [thstkdgus35/EDSR-PyTorch](https://github.com/thstkdgus35/EDSR-PyTorch), so you should also followed the requirements:
```
Python 3.6
PyTorch >= 1.0.0
numpy
skimage
imageio
matplotlib
tqdm
cv2 >= 3.xx (Only if you want to use video input/output)
```
## Reproducing Submission
To Reproduct the submission, do the folowed steps
1. [Framework Download and Setting](#Framework-Download-and-Setting)
2. [Dataset Preparation](#Dataset-Preparation)
3. [Training](#Training)
4. [Testing](#Testing)

### Framework Download and Setting

```
$ git clone https://github.com/thstkdgus35/EDSR-PyTorch.git
```
```
$ git clone https://github.com/LCA-0907/CS_T0828_HW4.git
```

Put my code in the corresponding `src` dir in EDSR-Pytorch
### Dataset Preparation
Download dataset from [google drive](https://drive.google.com/drive/u/0/folders/1H-sIY7zj42Fex1ZjxxSC3PV1pK4Mij6x)
Use `prepare_data.py` to generate LR training images.

### Training
To train the model, use command line as
`
python3 main.py --template RCAN --save RCAN_BIX3_G10R20P48 --scale 3 --reset --save_results --patch_size 72 --n_threads 1 --ext img --batch_size 64
`
or run `run.sh`

### Testing
To test the model, use command
`python3 main.py --model RCAN --test_only --scale 3 --pre_train ../experiment/RCAN_BIX3_G10R20P48/model/model_best.pt --save_results --ext img --data_test Demo`


###### tags: `Deep Learning` `CV` `Super resolution`
