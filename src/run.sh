# train
python3 main.py --template RCAN --save RCAN_BIX3_G10R20P48 --scale 3 --reset --save_results --patch_size 72 --ext img --data_range 1-281/282-291 --batch_size 64

# train with all data
#python3 main.py --template RCAN --save RCAN_BIX3_291 --scale 3 --reset --save_results --patch_size 72 --n_threads 1 --ext img --data_range 1-291/1-291

# for finetune from 68
#python3 main.py --template RCAN --save RCAN_BIX3_FINETUNE --scale 3 --reset --save_results --patch_size 72 --n_threads 1 --ext img --data_range 1-281/282-291 --pre_train ../experiment/RCAN_BIX3_G10R20P48/model/model_best.pt

# test
 python3 main.py --model RCAN --test_only --scale 3 --pre_train ../experiment/RCAN_BIX3_G10R20P48/model/model_best.pt --save_results --ext img --data_test Demo --template RCAN