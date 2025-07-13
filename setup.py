from setuptools import setup
from torch.utils.cpp_extension import BuildExtension, CUDAExtension

# 定义与你原始代码中相同的T_MAX常量
# 这确保了CUDA代码在编译时使用正确的常量值
T_MAX = 512 * 64

setup(
    # 扩展模块的名称，这个名字在import时使用
    name='wkv',

    ext_modules=[
        CUDAExtension(
            # 再次指定模块名，需要和PYBIND11_MODULE中的名字一致
            name='wkv',

            # 源文件列表
            sources=[
                'cuda/wkv_op.cpp',
                'cuda/wkv_cuda.cu',
            ],

            # 为C++和CUDA编译器分别指定编译参数
            extra_compile_args={
                'cxx': [
                    '-O3',  # C++优化级别
                ],
                'nvcc': [
                    '-O3',  # NVCC优化级别
                    '-res-usage',
                    '--maxrregcount', '60',
                    # 使用f-string将T_MAX作为宏定义传递给CUDA编译器
                    f'-DTmax={T_MAX}',
                ]
            }
        )
    ],

    # 指定构建扩展的命令类
    cmdclass={
        'build_ext': BuildExtension
    }
)
