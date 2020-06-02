main() {
  var cache = new Cache<String>();
  cache.setByKey('key', 'test');
  print('key=${cache.getByKey('key')}');

  T sum<T extends num>(List<T> list, T init) {
    T sum = init;
    list.forEach((value) {
      sum += value;
    });
    return sum;
  }

  int r1 = sum<int>([1, 2, 3], 0);
  print(r1);

  double r2 = sum([1.1, 2.2, 3.3], 0.0);
  print(r2);
}

class Cache<T> {
  Map<String, T> store = <String, T>{};
  T getByKey(String key) {
    return store[key];
  }

  void setByKey(String key, T value) {
    this.store.addAll(<String, T>{key: value});
  }
}
