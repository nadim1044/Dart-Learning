// Define sealed classes for Pattern Matching
sealed class Shape {}

class Circle extends Shape {
  final double radius;

  Circle({required this.radius});
}

class Square extends Shape {
  final double side;

  Square({required this.side});
}

void main() {
  // With Circle
  Shape shape1 = Circle(radius: 5);
  String result1 = switch (shape1) {
    Circle(:var radius) => 'Circle with radius $radius',
    Square(:var side) => 'Square with side $side',
  };
  print(result1); // Circle with radius 5.0
  // With Square
  Shape shape2 = Square(side: 8);
  String result2 = switch (shape2) {
    Circle(:var radius) => 'Circle with radius $radius',
    Square(:var side) => 'Square with side $side',
  };
  print(result2); // Square with side 8.0
}
