// Q2
// Model shapes to compute total paintable area and cost.
// Requirements:- Provide a general shape type (concrete class) with an area() method that can be overridden.- Implement at least three concrete shape types with encapsulated dimensions and validated
// constructors (invalid → print; keep previous).- Use polymorphism with a mixed collection of shapes to compute total area (no type checks in client
// code).- Apply tiered pricing: first 50 units at 1.50, next 100 at 1.25, remainder at 1.00; print total area and total
// cost to 2 decimals.
void main() {
  List<Shape> shapes = [
    Rectangle(10, 5),
    Circle(5),
    Triangle(6, 4),
  ];

  double totalArea = 0;
  for (var s in shapes) {
    totalArea += s.area();
  }

  double cost = calculateCost(totalArea);

  print('Total Area: ${totalArea.toStringAsFixed(2)}');
  print('Total Cost: ${cost.toStringAsFixed(2)}');
}

double calculateCost(double area) {
  double cost = 0;

  if (area > 150) {
    cost += 50 * 1.5;
    cost += 100 * 1.25;
    cost += (area - 150) * 1.0;
  } else if (area > 50) {
    cost += 50 * 1.5;
    cost += (area - 50) * 1.25;
  } else {
    cost += area * 1.5;
  }

  return cost;
}



class Shape {
  double area() => 0;
}



class Rectangle extends Shape {
  double _w, _h;

  Rectangle(double w, double h)
      : _w = w > 0 ? w : 1,
        _h = h > 0 ? h : 1 {
    if (w <= 0 || h <= 0) {
      print('Invalid rectangle dimensions');
    }
  }

  @override
  double area() => _w * _h;
}



class Circle extends Shape {
  double _r;

  Circle(double r) : _r = r > 0 ? r : 1 {
    if (r <= 0) print('Invalid radius');
  }

  @override
  double area() => 3.14 * _r * _r;
}



class Triangle extends Shape {
  double _b, _h;

  Triangle(double b, double h)
      : _b = b > 0 ? b : 1,
        _h = h > 0 ? h : 1 {
    if (b <= 0 || h <= 0) print('Invalid triangle dimensions');
  }

  @override
  double area() => 0.5 * _b * _h;
}
