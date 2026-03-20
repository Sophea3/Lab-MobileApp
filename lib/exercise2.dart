import 'dart:math';

abstract class Shape {
  double area();
  String describe();
}

class Circle extends Shape {
  double radius;
  Circle(this.radius);

  @override
  double area() {
    return pi * radius * radius;
  }

  @override
  String describe() {
    return "Circle (radius=$radius): area=${area().toStringAsFixed(2)}";
  }
}

class Rectangle extends Shape {
  double w;
  double h;
  Rectangle(this.w, this.h);
  @override
  double area() {
    return w * h;
  }

  @override
  String describe() {
    return "Rectangle (${w}*$h): area=${area().toStringAsFixed(2)}";
  }
}

class Triangle extends Shape {
  double b;
  double h;

  Triangle(this.b, this.h);

  @override
  double area() {
    return 0.5 * b * h;
  }

  @override
  String describe() {
    return "Triangle (b=$b, h=$h): area = ${area()}";
  }
}

void main() {
  List<Shape> shapes = [Circle(5), Rectangle(4, 6), Triangle(3, 8)];

  for (var shape in shapes) {
    print(shape.describe());
  }
}
