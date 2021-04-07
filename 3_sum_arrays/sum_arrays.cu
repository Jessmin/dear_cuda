#include <cuda_runtime.h>
#include <stdio.h>
#include "freshman.h"

void sumArrays(float * a,float * b,float * res,const int size)
{
  for(int i=0;i<size;i+=4)
  {
    res[i]=a[i]+b[i];
    res[i+1]=a[i+1]+b[i+1];
    res[i+2]=a[i+2]+b[i+2];
    res[i+3]=a[i+3]+b[i+3];
  }
}

__global__ void sumArraysGPU(float *a,float *b, float *res){
  int i = threadIdx.x;
  res[i]=a[i]+b[i];
}

int main(int argc,char **argv){
  int dev = 0;
  cudaSetDevice(dev);

  int nElem = 32;
  printf("Vector Size:%d\n",nElem);

  int nByte = sizeof(float) * nElem;
  



}