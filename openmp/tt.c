#include <omp.h>

int Get_num_zero(int inf,int *a,int *b){
    int cnt = 0;
    #pragma omp parallel for
    for (int i = 0; i < 20; i++) {
        if (b[i] == 1) break;
        if (b[i] == 0){
            #pragma omp critical
                cnt ++;
        }
        a[i] = b[i] + inf * (i + 1);
    }
    return cnt;
}



int cnt = 0, inf = 7;
int a[20], b[20];

#pragma omp parallel for reduction(+:cnt)
for (int i = 0; i < 20; i++) {
    if (b[i] == 0) {
        cnt++;
    }
    a[i] = b[i] + inf * (i + 1);
}
