
#include <stdio.h>

#define N 4
#define M 4

int process(int m, int n, int matrix[N][M])
{
    int result = 0;
    for (int i = 0; i < n; i++)
    {
        for (int j = 0; j < m; j++)
        {
            result += matrix[i][j];
        }
    }
    return result;
}
int main()
{
    int matrix[N][M] = { { 1,1,1,1 },{2, 2, 2, 2},{3, 3, 3, 3},{4, 4, 4, 4} };

    int Result=process(M, N, matrix);

    printf("Summ=%d", Result);
    return 0;
  
}