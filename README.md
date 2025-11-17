# [TMI 2025] Zig-RiR: Zigzag RWKV-in-RWKV for Efficient Medical Image Segmentation  
&gt;  **This fork = bug-fixed & out-of-the-box runnable version for 3D Synapse (Windows + VS2022)**  

| 原论文 | [IEEE TMI 2025](https://ieeexplore.ieee.org/document/10969076) |
|--------|-------------------------------------------------------|
| 官方仓库 | [txchen-USTC/Zig-RiR](https://github.com/txchen-USTC/Zig-RiR)        |
| 本分支 | **Windows 可运行版，修改了bug，能够运行ZigRiR 3d Synapse。**        |

---

## 1. 一键运行前（Windows）
1. **必须用 “x64 Native Tools Command Prompt for VS 2022”**  
   开始菜单 → Visual Studio 2022 → **x64 Native Tools Cmd**。
2. **依次执行下面 3 条命令**（路径自己改，**不要带空格**）：  
```cmd
set "unetr_pp_raw_data_base=F:\lzd\xhb\SCI\DATASET_Synapse\unetr_pp_raw\unetr_pp_raw_data"
set "RESULTS_FOLDER=F:\lzd\xhb\SCI\DATASET_Synapse\results"
set "unetr_pp_preprocessed=F:\lzd\xhb\SCI\DATASET_Synapse\unetr_pp_raw\unetr_pp_cropped_data"
```
## 2. 数据集参考
原代码对数据集的改动较大，且有多处错误。本项目的Synapse 3d数据集目录如下，仅作参考。
```markdown
DATASET_Synapse
├── results
│   └── unetr_pp
│       └── 3d_fullres
│           └── Task002_Synapse
│               └── unetr_pp_trainer_synapse__unetr_pp_Plansv2.1
│                   ├── fold_0
│                   └── plans.pkl
├── unetr_pp
└── unetr_pp_raw
    ├── unetr_pp_cropped_data
    │   └── Task002_Synapse
    └── unetr_pp_raw_data
        ├── Task002_Synapse
        └── Task002_Synapse
```
其中，在`DATASET_Synapse/unetr_pp_raw/unetr_pp_raw_data/Task02_Synapse/Task002_Synapse`目录下存放着的Synapse 3D数据集，需复制到`DATASET_Synapse/unetr_pp_raw/unetr_pp_cropped_data/Task002_Synapse`下。
## 3. 运行
训练 3D Synapse
```cmd
python -m zig_rir3d.run.run_training 3d_fullres unetr_pp_trainer_synapse 2 0
```