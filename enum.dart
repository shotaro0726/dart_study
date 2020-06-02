main() {
  var c = Color.blue;
  print(Color.green.index == 1);

  switch (c) {
    case Color.green:
      print('green');
      break;
    case Color.blue:
      print('blue');
      break;
    case Color.red:
      print('red');
      break;
    default:
  }
}

enum Color{red, green, blue}