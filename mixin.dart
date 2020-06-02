main() {
  var musical = new Musician();
  musical.PerformerMethod();
  musical.MusicalMethod();
}

class Performer {
  Performer() {
    print('Perfomer');
  }

  void PerformerMethod() {
    print('PerformerMethod');
  }
}

mixin Musical {
  void MusicalMethod() {
    print('MusicalMethod');
  }
}

class Musician extends Performer with Musical {
  Musician() : super() {
    print('Musical');
  }
}
