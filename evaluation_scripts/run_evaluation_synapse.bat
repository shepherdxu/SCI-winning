@echo off
echo ===== 开始验证 =====

REM 基础环境设置
F:
cd lzd\xhb\SCI
conda activate SCI

REM 验证专用环境变量
set DATASET_PATH=F:\lzd\xhb\SCI\DATASET_Synapse
set CHECKPOINT_PATH=%DATASET_PATH%\results
set PYTHONPATH=F:\lzd\xhb\SCI
set RESULTS_FOLDER=%CHECKPOINT_PATH%
set unetr_pp_preprocessed=%DATASET_PATH%\unetr_pp_raw\unetr_pp_cropped_data
set unetr_pp_raw_data_base=%DATASET_PATH%\unetr_pp_raw
set CUDA_VISIBLE_DEVICES=1

REM 启动验证（使用最佳模型）
echo 开始模型验证...
python -m zig_rir3d.run.run_training 3d_fullres unetr_pp_trainer_synapse 2 0 --valbest --validation_only

echo 验证完成！
pause