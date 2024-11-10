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

abstract class Person is having abstract method `personIntro`. Which can be vary person to person and `displayInfo` can
be concrete method for all Person.

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

A sealed class acts like a 'locked' or restricted class hierarchy, where all subclasses must be defined in the same
file. This restriction creates a controlled set of subclasses, effectively 'locking' the class against any further
extension outside of the defined scope.

As Example: Think you have class called result in which you just want to have finit set of outcomes that can be Success
and Failed.

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
- variable and method belongs class instead of instance.
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
- Since dart is not having any object keyword for singleton object creation it creates singleton object through making
  constructor private.
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

## Parameters in Dart

- There are mainly three types of parameters exist in dart.
- after this there are two combination is `positionalParamsWithNamed` and `positionalParamsWithOptional`.
- Positional params: every arguments need to be in actual when you are providing its value.
- Named params: every arguments gets the name as and need to provide value accordingly. Use curly brace.
- Optional params: arguments will be optional to provide its value. uses square brackets.

#### Example:

```dart
static void namedParams
(
{
required
String
name}) {
print('Named Params : $name');
}

static void optionalParams([String? name]) {
print('optionalParams : $name');
}

static void positionalParams(String? name) {
print('positionalParams : $name');
}

static void positionalParamsWithNamed(String name, {required String title}) {
print('positionalParamsWithNamed : $name : $title');
}

static void positionalParamsWithOptional(String name, [String? title]) {
print('positionalParamsWithOptional : $name : $title');
}
```

## Enums

- Enums are uses for named constant value in dart.
- Enums provides constant, and you can add your desire object with it.
- As example, you can create country code enums and provide actual name of country with it.

```dart
enum Country {
  INDIA('India'),
  CANADA('Canada'),
  IRELAND('Ireland'),
  CHINA('China');

  const Country(this.countryName);

  final String countryName;
}
```

## Object-Oriented Programming Concepts

#### Object

- Object is real world entity which have behaviour and state. Or we can it is blueprint of class.
- An object can be defined as instance of class.

#### Class

- Class is blueprint from which we create objects. It have methods and variables.

#### Abstraction

- Abstraction is the process of hiding internal details and showing required functionality.
- Abstraction achieve through abstract class and interface.
- Example: interface or abstract class we just add functionality and whenever we implement it that time we write its
  internal.

```dart
abstract class Car {
  void accelerator();

  void speedBreak();

  void displaySpeed(int speed) {
    print('Speed : $speed');
  }
}

class BMW extends Car {
  int speed = 0;

  @override
  void accelerator() {
    speed++;
  }

  @override
  void speedBreak() {
    speed--;
  }
}
```

#### Encapsulation

- Encapsulation is the concept of Binding data and code into single unit.
- dart class is itself an example of encapsulation.
- access modifiers are used to provide a limitation on access of variable and methods.

#### Polymorphism

- Polymorphism provide the ability to access one class for many task.
- class Shape can be used for Triangle, Circle and Square.
- Two types of polymorphism

1. Compile Time (Dart does not support.)
2. Runtime

- In compile-time you can provide same name but different parameter to method.
- Runtime polymorphism done through method overriding.

#### Inheritance

- Inheritance is the concept where acquire the all properties of parent class.
- The class which acquire is known as subclass and the class from it gets is called super class.
- Inheritance build the IS-A relation between the class. Student IS A kind of Person.
- Single inheritance :

```dart
class A {}

class B extends A {}
```

- Multi-level inheritance

```dart
class A {}

class B extends A {}

class C extends B {}
```

- Multiple Inheritance [Dart does not support] Clas tries to extend two classes.
- Hierarchical Inheritance [One class get extended in two or more class]

```dart

class A {}

class HierarchicalInheritance1 extends A {}

class HierarchicalInheritance2 extends A {}
```

#### Coupling

- Coupling shows the dependencies among the class.
- if the class depends on other class in many ways then High coupling
- if the class do not depend too much on other class then it called low coupling.
- If the code will be low coupled then it will be easy to remove or refactor.

#### Cohesion

- Cohesion defines how effectively elements within module work together to achieve single purpose.

IT is Best practice to write a program which have Low coupling and High cohesion.

#### Association

- Association also describe the relationship among the class.
- It shows HAS-A relation with classes.
- Categories into `Aggregation` and `Composition`.
- `Aggregation` is form on association in which two class can survive individually.
- `Composition` is form of association where can not survive together if anyone of them get removed.
- Relationship of player with Team can represent as aggregation as deletion of player does not affect the Team as there
  are other players exist.
- Relationship of Car with engine represent composition association as after removing engine car would not survive.

## 🚀 About Me

I am mobile application developer with experience of android and flutter.