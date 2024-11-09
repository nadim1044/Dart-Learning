# Dart Learning

This repo is going to talk about the basic of dart language


## Abstract class

Abstract class is used in Object orineted programmig language for abstraction and encapsulation.


Points:

- abstract keyword used for abstract class.
- abstract class can run without abstract method.
- you can add concrete method on abstraction class.
- Abstract classes can't be instantiated.

Example:

abstract class Person is having abstract method `personIntro`. Which can be vary person to person and `displayInfo` can be concrete method for all Person.

`person.dart`

```dart
abstract class Person {

  Person({required this.name});
  String name;

  void personIntro();

  void displayInfo() {
    print('Name : $name');
  }
}

```
`boy.dart`
```dart
class Boy extends Person {
  Boy({required super.name});

  @override
  void personIntro() {
    print('My name is $name. I am a engineer');
  }

}
```


## Sealed class

A sealed class acts like a 'locked' or restricted class hierarchy, where all subclasses must be defined in the same file. This restriction creates a controlled set of subclasses, effectively 'locking' the class against any further extension outside of the defined scope.




## 🚀 About Me
I am mobile application developer with experience of android and flutter.