void main(){

   var p = Point(5, 3);
    p.translation(3, 4);
    p.display();

}

class Point{
  double x;
  double y;
  Point(this.x, this.y);
  
  @override
  void translation(double dx, double dy){
    x += dx;
    y += dy;
  }
  void display(){
    print("(${x}, ${y})");
  }


}