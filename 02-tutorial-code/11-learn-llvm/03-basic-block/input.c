// matmul function
int matmul(int a[2][2], int b[2][2], int c[2][2]) {
  for (int i = 0; i < 2; i++) {
    for (int j = 0; j < 2; j++) {
      c[i][j] = 0;
      for (int k = 0; k < 2; k++) {
        c[i][j] += a[i][k] * b[k][j];
      }
    }
  }
  return 0;
}
