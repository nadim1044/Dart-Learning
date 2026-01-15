# Dart Learning

This repository provides an overview of the **basics of the Dart programming language** with key concepts, examples, and
best practices.

## Object-Oriented Programming Concepts

Object-oriented programming (OOP) is the backbone of Dart. Below are the core OOP principles:

### Object

- An **object** is a real-world entity that has behavior and state. It is an **instance of a class**.

### Class

- A **class** is a blueprint for creating objects. It defines methods and variables.

### Abstraction

- **Abstraction** hides internal details and shows only the required functionality.
- Achieved through **abstract classes** and **interfaces**.

Example:

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

### Encapsulation

- **Encapsulation** binds data and code into a single unit.
- Dart classes themselves are examples of encapsulation.
- **Access modifiers** (e.g., private variables using `_`) restrict access to variables and methods.

### Polymorphism

- **Polymorphism** allows one class to be used for many tasks. For example, a `Shape` class can represent a `Circle`,
  `Square`, or `Triangle`.

Types of Polymorphism:

1. Compile-Time (not supported in Dart).
2. Run-Time (achieved using method overriding).

### Inheritance

- **Inheritance** allows a subclass to acquire the properties and methods of a parent class.
- Builds an **IS-A** relationship between classes (e.g., a `Student IS-A Person`).

Examples:

1. **Single Inheritance**
   ```dart
   class A {}
   class B extends A {}
   ```
2. **Multi-level Inheritance**
   ```dart
   class A {}
   class B extends A {}
   class C extends B {}
   ```
3. **Hierarchical Inheritance**
   ```dart
   class A {}
   class B1 extends A {}
   class B2 extends A {}
   ```

### Coupling and Cohesion

- **Coupling** describes the dependencies among classes.
    - **Low coupling** is ideal as it simplifies refactoring and maintenance.
- **Cohesion** defines how well elements within a module work together to achieve a single purpose.
    - High cohesion is a best practice.

### Association

- **Association** describes relationships between classes and can be:
    1. **Aggregation**: Two classes can survive independently.
    2. **Composition**: One class cannot exist without the other.

---

## Abstract Class

- Abstract classes are used in object-oriented programming for **abstraction** and **encapsulation**.
- **Key Points**:
    - Declared using the `abstract` keyword.
    - Can contain both abstract and concrete methods.
    - Cannot be instantiated.

Example:

```dart
abstract class Person {
  Person({required this.name});

  String name;

  void personIntro();

  void displayInfo() {
    print('Name : $name');
  }
}

class Boy extends Person {
  Boy({required super.name});

  @override
  void personIntro() {
    print('My name is $name. I am an engineer');
  }
}
```

---

## Sealed Class

- A **sealed class** restricts subclassing to the same file, ensuring a controlled hierarchy.
- It supports **pattern matching** in `switch` cases.

Example: A `Result` class with fixed outcomes (`Success` and `Failure`).

[Read More](https://medium.com/@ssindher11/exploring-sealed-classes-in-flutter-241d3e160132)

---

## Final and Const

### Final Variables

- Can only be initialized once.
- Useful when the value is determined at **runtime** (e.g., `DateTime.now()`).

### Const Variables

- Value must be known at **compile-time**.
- Use when the value is fixed and won't change.

### Final Class

- Declaring a class as `final` prevents it from being extended.

---

## Static

- The `static` keyword is used with variables and methods.
- It ensures the members belong to the **class** instead of instances.

**Example**:

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

---

## Private Named and Const Constructor

- Private constructors (`_`) are used to create **singleton objects**.
- Named private constructors can be used for restricted instantiation.

Example:

```dart
class Singleton {
  static Singleton? _instance;

  Singleton._(); // Private constructor

  factory Singleton.getInstance() {
    _instance ??= Singleton._();
    return _instance!;
  }
}
```

---

## Parameters in Dart

Dart supports three main types of parameters:

1. **Positional Parameters**: Arguments are passed in order.
2. **Named Parameters**: Arguments are passed by name using curly braces `{}`.
3. **Optional Parameters**: Arguments are optional and use square brackets `[]`.

Example:

```dart
void namedParams({required String name}) {
  print('Named Params : $name');
}

void optionalParams([String? name]) {
  print('Optional Params : $name');
}

void positionalParams(String name) {
  print('Positional Params : $name');
}
```

---

## Enums

Enums are used to define named constant values.

Example:

```dart
enum Country {
  INDIA('India'),
  CANADA('Canada'),
  IRELAND('Ireland');

  const Country(this.countryName);

  final String countryName;
}
```

## Future

Future is one time contract where you give task, and it will give you back once it will get available.
Future does work on your main thread so always opt for Isolate if you are running heavy task.

---

## 🚀 About Me

I am a **Mobile Application Developer** with experience in **Android** and **Flutter** development.
