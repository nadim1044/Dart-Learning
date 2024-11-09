import 'person.dart';

final class Boy extends Person {
  Boy({required super.name});

  @override
  void personIntro() {
    print('My name is $name. I am a engineer');
  }

  void dat() {}

}
