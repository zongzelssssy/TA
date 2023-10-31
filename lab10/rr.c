#include <omp.h>
#include <stdio.h>

int main() {
    int count = 0;

    //omp_set_num_threads(10);

    #pragma omp parallel for private(count)
    for (int i = 0; i < 10; i++) {
        count++;
        printf("Count = %d\n", count);
    }

    printf("Count = %d\n", count);
    return 0;
}
