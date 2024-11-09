abstract class Person {
  Person({required this.name});
  String name;
  void gender();
  void displayInfo() {
    print('Name : $name');
  }
}