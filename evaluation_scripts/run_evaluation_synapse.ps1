for ($i = 1; $i -le 6; $i++) {
    Write-Host "▶️ Training round $i"

    # 设置仅对本次调用可见的环境变量
    $env:CUDA_VISIBLE_DEVICES = '0'

    python train2d.py --dataset synapse `
                      --index $i `
                      --end_epoch 200 `
                      --warm_epochs 5 `
                      --lr 0.0003 `
                      --train_batchsize 8 `
                      --crop_size 512 512 `
                      --nclass 2
}