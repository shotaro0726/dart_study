main() {
  const p = Point(1, 2);
  print('x=${p.x}, y=${p.y}');
  var pp = Point.alongXAxis(3);
  print('x=${pp.x}, y=${pp.y}');
}

class Point {
  final int x;
  final int y;

  const Point(this.x, this.y);
  const Point.alongXAxis(int x) : this(x, 0);
}
