@echo off
REM 设置环境变量
set DATASET_PATH=F:\lzd\xhb\SCI\DATASET_Synapse
set CHECKPOINT_PATH=F:\lzd\xhb\SCI\DATASET_Synapse\results
set PYTHONPATH=F:\lzd\xhb\SCI
set RESULTS_FOLDER=%CHECKPOINT_PATH%
set unetr_pp_preprocessed=%DATASET_PATH%\unetr_pp_raw\unetr_pp_raw_data\Task002_Synapse
set unetr_pp_raw_data_base=%DATASET_PATH%\unetr_pp_raw

REM 设置CUDA并运行验证
set CUDA_VISIBLE_DEVICES=1
python -m zig_rir3d.run.run_training 3d_fullres unetr_pp_trainer_synapse 2 0 --validation_only

REM 暂停以便查看输出
pause