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

As Example: Think you have class called result in which you just want to have finit set of outcomes that can be Success and Failed.

sealed class also enables a pattern matching in dart for switch cases.

- [Reference](https://medium.com/@ssindher11/exploring-sealed-classes-in-flutter-241d3e160132)


## Final and const keyword

### final with variables
It is going throw exception on reinitialization.

It is used when you want to evaluated of your variable at run-time.

Example : `DateTime.now();`

### const with variables

It is used when you want to evaluated of your variable at compile-time.

So using we can variable const if know its value before compilation and don't want to reinitialize it.

### final with class

- if you make class final then it would not be available for any further extension.

## Static

- Static keyword is use with variable and method
- It is used for memory management
- variable and method belongs  class instead of instance.
- Dart does not have feature of static bloc and static nested class like java.
- You can use static variable only in static method bloc.

```dart
class Student {
  Student({required this.name});

  String name;
  static String collegeName = '';

  static void changeCollegeName() {
    collegeName = 'IIT-Delhi';
  }
}
```

## Private Named and const Constructor

- This is used make singleton object in dart.
- Since dart is not having any object keyword for singleton object creation it creates singleton object through making constructor private.
- After making constructor private it will not be allowed to create its instance out side of the class.
- if you add name after underscore it will become Named private constructor.

Example:

```dart
class Singleton {
  static Singleton? _instance; // Private instance variable

  // Private constructor
  Singleton._();

  // Factory constructor to provide access to the singleton instance
  factory Singleton.getInstance() {
    if (_instance == null) {
      _instance = Singleton._(); // Creating an instance using the private constructor
    }
    return _instance!;
  }
}
```

## 🚀 About Me
I am mobile application developer with experience of android and flutter.