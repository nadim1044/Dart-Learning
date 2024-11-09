import '../sealed/state_machine.dart';

abstract class Person {

  Person({required this.name});
  String name;

  void personIntro();

  void displayInfo() {
    print('Name : $name');
  }
}


// Person boy = Boy(name: 'Nadim');
// boy.personIntro();
// O/p: My name is $name. I am a engineer