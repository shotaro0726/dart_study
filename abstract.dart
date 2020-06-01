main() {
  var cat = new Cat();
  cat.hello();
}

abstract class Animal {
  void hello();
}

class Cat extends Animal {
  void hello() {
    print('mewo!!!');
  }
}
