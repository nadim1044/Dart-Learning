/// Since dart does not support compile time polymorphism and it encourage to use different method the below
/// Program will not work.
// class Calculator {
//   int add(int a, int b) => a + b;
//
//   double add(double a, double b) =>
//       a + b; // Different data types for overloading (conceptually)
// }

/// Runtime polymorphism
class Animal {
  void speak() {
    print("Animal speaks");
  }
}

class Dog extends Animal {
  @override
  void speak() {
    print("Dog barks");
  }
}

class Cat extends Animal {
  @override
  void speak() {
    print("Cat meows");
  }
}

void main() {
  Animal myDog = Dog(); // Treating Dog as Animal
  myDog.speak(); // Output: Dog barks

  Animal myCat = Cat(); // Treating Cat as Animal
  myCat.speak(); // Output: Cat meows
}
