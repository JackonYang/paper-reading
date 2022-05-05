#include <algorithm>
#include <ctime>
#include <iostream>

int main() {
  const unsigned ARRAY_SIZE = 50000;

  int data[ARRAY_SIZE];

  const unsigned DATA_STRIDE = 256;

  for (unsigned c = 0; c < ARRAY_SIZE; ++c) {
    data[c] = std ::rand() % DATA_STRIDE;
  }

  // std ::sort(data, data + ARRAY_SIZE);

  {  // 测试部分

    clock_t start = clock();

    long long sum = 0;

    for (unsigned i = 0; i < 100000; ++i) {
      for (unsigned c = 0; c < ARRAY_SIZE; ++c) {
        if (data[c] >= 128) sum += data[c];
      }
    }

    double elapsedTime = static_cast<double>(clock() - start) / CLOCKS_PER_SEC;

    std ::cout << elapsedTime << "\n"
               << "sum = " << sum << "\n";
  }

  return 0;
}
