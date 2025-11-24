# PowerShell script for running unetr_pp training

# Set environment variables
$env:DATASET_PATH = "../DATASET_Synapse"
$env:CHECKPOINT_PATH = "../unetr_pp/evaluation/unetr_pp_synapse_checkpoint"
$env:PYTHONPATH = ".././"
$env:RESULTS_FOLDER = "$env:CHECKPOINT_PATH"
$env:unetr_pp_preprocessed = "$env:DATASET_PATH/unetr_pp_raw/unetr_pp_raw_data/Task02_Synapse"
$env:unetr_pp_raw_data_base = "$env:DATASET_PATH/unetr_pp_raw"

# Run the training command
python ../unetr_pp/run/run_training.py 3d_fullres unetr_pp_trainer_synapse 2 0 --validation_only