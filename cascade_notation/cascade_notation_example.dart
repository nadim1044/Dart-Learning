import 'dart:developer';

class Person {
  String name = '';
  int age = 0;

  void greet() => print('Hi, I am $name and my Age $age');

  void info() => print('Age: $age');
}

void main() {
  // Without cascade — repetitive
  var p1 = Person();
  p1.name = 'Alice';
  p1.age = 25;
  p1.greet();
  // With cascade — clean
  var p2 = Person()
    ..name = 'Nadim'
    ..age = 26
    ..greet() // Hi, I am Alice
    ..info(); // Age: 25

  log('Person ${p2}');
}
