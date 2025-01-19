class Animal {
  void eat() {
    print('Eating...');
  }
}

class Dog extends Animal {
  void bark() {
    print('Barking...');
  }

  @override
  void eat() {
    super.eat();
    print('Dog is eating...');
  }
}

void main() {
  Dog dog = Dog();
  dog.eat(); // Output: Dog is eating...
  dog.bark(); // Output: Barking...
}
