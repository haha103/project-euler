#include <stdio.h>

int main(int argc, char ** argv) {
  int i = 1;
  int n = 0;
  while(1) {
    n = n + i;
    int c = 0;
    for (int j = 1; j < n / 2; ++j) {
      if (n % j == 0)
        ++c;
    }
    if (c > 100)
      printf("%d: %d\n", n, c);
    if (c >= 500) {
      printf("%d: %d\n", n, c);
      break;
    }
    i += 1;
  }
  return 0;
}
