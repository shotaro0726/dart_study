import 'dart:async';

main() async {
  Iterable<int> countIterrator(int n) sync* {
    int k = 0;
    while (k < n) yield k++;
  }

  var iterator = countIterrator(3);
  iterator.forEach((element) {
    print(element);
  });
  print('--------');

  Stream<int> countStream(int to) async* {
    for (int i = 1; i <= to; i++) {
      yield i;
    }
  }

  var stream = countStream(3);
  await for (var value in stream) {
    print(value);
  }

  print('--------');

  var stream2 = countStream(3);
  stream2.listen((event) {
    print(event);
  });
}
