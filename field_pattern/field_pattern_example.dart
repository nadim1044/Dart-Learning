abstract class Shape {}

class Rectangle extends Shape {
  final double width;
  final double height;

  Rectangle({
    required this.width,
    required this.height,
  });
}

class Circle extends Shape {
  final double radius;

  Circle({
    required this.radius,
  });
}

void main() {
  Shape rect = Rectangle(width: 10, height: 5);
  Shape circle = Circle(radius: 10);

  /// with field pattern
  final result = switch (rect) {
    Rectangle(:var width, :var height) => 'Rectangle: $width x $height',
    Circle(:var radius) => 'Circle radius: $radius',
    _ => 'Unknown shape',
  };

  /// Without field pattern
  final result2 = switch (circle) {
    Rectangle rect => 'Rectangle: ${rect.width} x ${rect.height}',
    Circle c => 'Circle radius: ${c.radius}',
    _ => 'Unknown shape',
  };

  print(result);
  print(result2);
}
