class Point {
  final double x;
  final double y;

  Point(this.x, this.y);

  Point translate(double dx, double dy) {
    double newX;
    double newY;

    newX = dx + x; 
    newY = dy + y; 

    Point newpoint = new Point(newX, newY);    
    return newpoint;
  }

  @override
  String toString() => 'Point(x: $x, y: $y)';
}

void main() {

  var p = Point(5, 3);
  print('Initial point: $p');

  print(p.translate(1, 3));
  print(p.translate(5, 7));
  
}
