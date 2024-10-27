
import 'dart:io';

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

class Shape{
  Point startingPoint;
  double height, width;
  

  Shape(this.startingPoint, this.height, this.width);

  // bottom right
  


}

void main(){
  Point left_bottom_point = Point(5, 2);
  double height = 5;
  double width = 3;
  Shape(left_bottom_point, height, width);

}