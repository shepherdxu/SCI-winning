# check_gpu.py
import torch, sys, os
print('torch.cuda.is_available():', torch.cuda.is_available())
print('current_device:', torch.cuda.current_device() if torch.cuda.is_available() else 'None')
print('device_name:', torch.cuda.get_device_name(0) if torch.cuda.is_available() else 'None')