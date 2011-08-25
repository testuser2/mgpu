nvcc --cubin -Xptxas=-v -D SCATTER_SIMPLE -D NUM_THREADS=128 -D VALUES_PER_THREAD=8 -D VALUE_TYPE_MULTI -arch=compute_20 -code=sm_20 -o ../cubin/sort_128_8_multi_simple.cubin sortgen.cu
IF %ERRORLEVEL% EQU 0 cuobjdump -sass ../cubin/sort_128_8_multi_simple.cubin > ../isa/sort_128_8_multi_simple.isa


