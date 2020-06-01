main() {
  var rect = Reactangle(3, 4, 20, 15);
  print('right=${rect.left}');
  rect.right = 12;
  print('left=${rect.left}');
}

class Reactangle {
  int left, top, width, height;

  Reactangle(this.left, this.top, this.width, this.height);
  int get right => left + width;
  set right(num value) => left = value - width;
  int get bottom => top + height;
  set bottom(num value) => top = value - height;
}
