import 'boy.dart';

abstract class Person {
  Person({required this.name});

  String name;

  void personIntro();

  void displayInfo() {
    print('Name : $name');
  }
}

void main() {
  Person boy = Boy(name: 'Nadim');
  boy.personIntro();
}
// O/p: My name is $name. I am a engineer
