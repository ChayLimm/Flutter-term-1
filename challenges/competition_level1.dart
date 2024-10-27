class Point {
  double x;
  double y;

  Point(this.x, this.y);

  void translate(double dx, double dy) {
    x += dx; 
    y += dy; 
  }

  @override
  String toString() => 'Point(x: $x, y: $y)';
}

void main() {

  var p1 = Point(0, 0);
  print('Initial point: $p1');

  p1.translate(5, 3);
  print('After translation: $p1');

  var p2 = Point(-2, -7);
  print('Point with negative coordinates: $p2');

  p2.translate(-3, 2);
  print('After negative translation: $p2');

  var p3 = Point(1.5, 2.7);
  print('Point with decimal coordinates: $p3');

  p3.translate(0.5, -1.2);
  print('After decimal translation: $p3');
}
