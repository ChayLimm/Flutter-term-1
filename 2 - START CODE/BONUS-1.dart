enum Direction { north, east, south, west } //enum is for reprensetting fixed value for shortcut
 
void main() {
  // Initial position {7, 3} and facing north
  int x = 7;
  int y = 3;
  Direction direction = Direction.north;
  // Example instruction sequence
  const instructions = "RAALAL";
  // Process the instructions and get the final position and direction
  // Print the final position and direction
  print("Final position:  ");
  print("Facing:  ");

//answer
  Robot_movement robot = Robot_movement(x,y,direction);
  robot.move_robot(instructions);
  print("Final position:  (${robot.x}, ${robot.y})");
  print("Facing: ${robot.facing}");
 

}

class Robot_movement{
  int x, y;
  Direction facing;
  Robot_movement(this.x, this.y, this.facing);

  void move_robot(String movements){
    for (int i=0; i < movements.length; i++){
      switch(movements[i]){
        case "L":
          turnLeft();
          break;
        case "R":
          turnRight();
          break;
        case "A":
          advance();
          break;
      }
    }
    }
    void turnLeft(){
      switch (facing) {
        case Direction.north:
          facing = Direction.west;
        break;
        case Direction.east:
          facing = Direction.north;
          break;
        case Direction.south:
          facing = Direction.east;
        break;
        case Direction.west:
          facing = Direction.south;
        break;
      }
    }

    void turnRight(){
      switch (facing) {
        case Direction.north:
          facing = Direction.east;
        break;
        case Direction.east:
          facing = Direction.south;
          break;
        case Direction.south:
          facing = Direction.west;
        break;
        case Direction.west:
          facing = Direction.north;
        break;
      }
    }

    void advance() {
      switch (facing) {
        case Direction.north:
          y += 1;
        break;
        case Direction.east:
          x += 1;
        break;
        case Direction.south:
         y-= 1;
        break;
        case Direction.west:
         x-=1;
        break;
      }
    }

  }

