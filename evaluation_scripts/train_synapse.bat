@echo off
echo ===== 开始训练 =====

REM 基础环境设置
F:
cd lzd\xhb\SCI
conda activate SCI

REM 训练专用环境变量
set "unetr_pp_raw_data_base=F:\lzd\xhb\SCI\DATASET_Synapse\unetr_pp_raw"
set "RESULTS_FOLDER=F:\lzd\xhb\SCI\DATASET_Synapse\results"
set "unetr_pp_preprocessed=F:\lzd\xhb\SCI\DATASET_Synapse\unetr_pp_raw\unetr_pp_cropped_data"

REM 启动训练（使用最终模型）
echo 开始模型训练...
set CUDA_VISIBLE_DEVICES=1 & python -m zig_rir3d.run.run_training 3d_fullres unetr_pp_trainer_synapse 2 0

echo 训练完成！
pause