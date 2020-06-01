main() {

  var person1 = new Person('Shotao', 'Ooki');
  print('${person1.firstName} ${person1.lastName}');
  person1.greed();
  var person2 = new Person.origin();
  print('{person2.firstName}${person2.lastName}');

  print(Person.capacity);
  Person.staticMethod();

  print(person1());
  person2._menber = 'abc';
  print(person2._menber);

  var engineer1 = new Engineer('えん', 'じにあ');
  engineer1.greed();

  Person enginner2 = Engineer.instance(true);
  enginner2.greed();
  (enginner2 as Engineer).greed();
}

class Person {
  String firstName;
  String lastName;

  Person(this.firstName, this.lastName);
  String _menber;
  Person.origin() {
    this.firstName = '氏';
    this.lastName = '名';
  }

  greed() {
    print('Hello ${firstName} ${lastName}');
  }

  static const capacity = 16;
  static void staticMethod() {
    print('Hello');
  }

  call() => '$firstName $lastName';
}

class Engineer extends Person {
  final String name;

  Engineer(String firstName, String lastName)
      : name = '',
        super(firstName, lastName);

  Engineer.origin()
      : name = 'hello',
        super.origin() {
    print('${firstName} ${lastName}');
  }

  factory Engineer.instance(bool isEngineer) {
    var instance = isEngineer ? new Engineer.origin() : new Person.origin();
    return instance;
  }

  @override
  greed() {
    print('Iam ${firstName}${lastName}');
  }
}
