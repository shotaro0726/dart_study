main() {
  var v1 = new Vector(1, 2);
  var v2 = new Vector(2, 3);
  var v3 = v1 + v2;
  print('x=${v3.x}, y=${v3.y}');
}

class Vector {
  final int x, y;

  Vector(this.x, this.y);

  Vector operator +(Vector v) => Vector(x + v.x, y + v.y);
  Vector operator -(Vector v) => Vector(x - v.x, y - v.y);
}
