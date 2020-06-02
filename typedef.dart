main() {
  Compare<int> sortFunc = sort;
  print('sort: ${sortFunc(1,2)}');
}

typedef Compare<T> = T Function(T a, T b);
int sort(int a, int b) => a - b;
