main() {}

class Person {
  String firstName;
  String lastName;
  int y;
  int x;

  Person(this.firstName, this.lastName);

  hello() {
    print('');
  }
}

class Master {
  final _name;

  Master(this._name);
  String commit(String msg) => '${_name} commit ${msg}';
}

class Branch implements Master {
  get _name => '';
  String commit(String msg) => 'Branch commit ${msg}';
}

class Director extends Person  {
  Director(String firstName, String lastName) : super(firstName, lastName);
  @override
  hello() {
    print("I'm Director");
  }

  @override
  int get x => x;

  // @override
  // int y => y; 

  void story() {
    print('Yes we can');
  }
}
