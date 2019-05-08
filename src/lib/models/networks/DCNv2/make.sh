#!/usr/bin/env bash
cd /usr/local/cuda-9.0/bin
pwd

./nvcc -c -o /home/imagry/projects/CenterNet/src/lib/models/networks/DCNv2/src/cuda/dcn_v2_im2col_cuda.cu.o /home/imagry/projects/CenterNet/src/lib/models/networks/DCNv2/src/cuda/dcn_v2_im2col_cuda.cu -x cu -Xcompiler -fPIC
./nvcc -c -o /home/imagry/projects/CenterNet/src/lib/models/networks/DCNv2/src/cuda/dcn_v2_im2col_cuda_double.cu.o /home/imagry/projects/CenterNet/src/lib/models/networks/DCNv2/src/cuda/dcn_v2_im2col_cuda_double.cu -x cu -Xcompiler -fPIC

# compile dcn-roi-pooling
./nvcc -c -o /home/imagry/projects/CenterNet/src/lib/models/networks/DCNv2/src/cuda/dcn_v2_psroi_pooling_cuda.cu.o /home/imagry/projects/CenterNet/src/lib/models/networks/DCNv2/src/cuda/dcn_v2_psroi_pooling_cuda.cu -x cu -Xcompiler -fPIC
./nvcc -c -o /home/imagry/projects/CenterNet/src/lib/models/networks/DCNv2/src/cuda/dcn_v2_psroi_pooling_cuda_double.cu.o /home/imagry/projects/CenterNet/src/lib/models/networks/DCNv2/src/cuda/dcn_v2_psroi_pooling_cuda_double.cu -x cu -Xcompiler -fPIC

cd -
python3 build.py
python3 build_double.py
