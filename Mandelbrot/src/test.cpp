//
// Created by zigal0 on 01.10.2021.
//

#include <cstdio>
#include <omp.h>

#include <stdio.h>
#include <omp.h>
int main(int argc, char * argv[]){
    int A[10], B[10], C[10], i, n;
    for(i=0; i<10; i++){ A[i] = i; B[i] = 2*i; C[i] = 0;}
#pragma omp parallel shared(A,B,C) private(i,n)
    {
        n = omp_get_thread_num();
#pragma omp for
        for(i=0; i<10; i++){
            C[i]=A[i]+B[i];
            printf("Нить %d сложила элементы %d\n", n, i);
        }
    }
    return 0;
}