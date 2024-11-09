import 'person.dart';

class Boy extends Person {
  Boy({required super.name});

  @override
  void gender() {
    print('It is Boy and Name is $name');
  }

}