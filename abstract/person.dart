abstract class Person {

  Person({required this.name});
  String name;

  void personIntro();

  void displayInfo() {
    print('Name : $name');
  }
}