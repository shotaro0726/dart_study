main() {
  int b = 10;
  double c = 12.3;
  String d = 'abc';
  bool e = true;
  print('$b, $c, $d, $e');
  List f = [1, 2, 3];
  f.add(4);
  f.add(5);
  print('$f, ${f.length}. ${f[0]}');
  Set g = {'a', 'b', 'c'};
  g.add('d');
  g.add('d');
  print('$g, ${g.length}, ${g.toList()[1]}');
  Map h = {'first': 'one', 'second': 'two', 'third': 'three'};
  h.addAll({'fourth': 'four'});
  print('$h, ${h.length}, ${h['first']}');
  Runes i = new Runes('u2665 u{1f605} u{1f60e} u{1f47b} u{1f596} U{1f44d}');
  print(new String.fromCharCodes((i)));
  #hogehoge;
  dynamic j = 10;
  j = 'a';
  print(j);
  print(int.parse('42') == 42);
  print(double.parse('42.3') == 42.3);
  print(42.31.toString() == '42.31');
}
