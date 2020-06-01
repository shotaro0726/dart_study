int testFunction() {
  const y = 20;
  print('$y');
  return y;
}

main() {
  const x = 10;
  var result = testFunction();
  print('$result');

  int oneline(a, b) => a + b;
  print(oneline(1, 2));
  void enableFlags({bool bold, bool hidden}) {
    print('$bold $hidden');
  }

  enableFlags(hidden: true);

  String say(String from, String msg,
      [String device = 'unlnown', String mood]) {
    return '$from says $msg pllatform: ${device} mood: ${mood ?? 'unlnown'}';
  }
}
