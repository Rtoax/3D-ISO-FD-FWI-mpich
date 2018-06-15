ALL:
	nvcc -o tti2d_acousticFD Toa_gpu_2dtti_fd_1orderfunction.cu
	nvcc -o tti2d_elasticFD Toa_gpu_2dtti_fd_elastic.cu
	nvcc -o tti2d_acousticRTM Toa_gpu_2dtti_rtm_adcigs_1orderfunciton.cu
    mpicc -o vtifd Toa_model_vti.c -lm -w
	mpicc -o vtirtm Toa_rtm_vti_adcig_cdp.c -lm -w
    gcc -o fd Toafd2domp_2.c -fopenmp -lm -w
clean:
	rm -f *.o *~
