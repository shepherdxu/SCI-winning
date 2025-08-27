import torch

def forward(B, T, C, w, u, k, v, y):
    """模拟forward函数，生成符合形状的随机张量填充到y中"""
    # y的形状应为 (B, T, C)，这里用随机值填充
    y[:] = torch.randn(B, T, C, device=y.device, dtype=y.dtype)

def backward(B, T, C, w, u, k, v, gy, gw, gu, gk, gv):
    """模拟backward函数，生成符合形状的随机梯度张量"""
    gw[:] = torch.randn_like(gw)
    gu[:] = torch.randn_like(gu)
    gk[:] = torch.randn_like(gk)
    gv[:] = torch.randn_like(gv)
