abstract class Animal {
  void eat();

  void sleep() {
    print('Sleeping...');
  }
}

class Dog implements Animal {
  @override
  void eat() {
    print('Dog is eating...');
  }

  @override
  void sleep() {
    //super.sleep();
    print('Dog is sleeping...');
  }
}

void main() {
  Dog dog = Dog();
  dog.eat(); // Output: Dog is eating...
  dog.sleep(); // Output: Dog is sleeping...
}
