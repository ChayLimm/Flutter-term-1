import 'dart:io';

class Tree {
  String type;
  double height;

  Tree(this.type, this.height);

  @override
  String toString() {
    return 'Tree(type: $type, height: $height)';
  }
}

class Window {
  String color;
  String side;
  int stair;

  Window(this.color, this.side, this.stair);

  @override
  String toString() {
    return 'Window(color: $color, side: $side, stair: $stair)';
  }
}

class Door {
  String color;
  String position;

  Door(this.color, this.position);

  @override
  String toString() {
    return 'Door(color: $color, position: $position)';
  }
}

class Roof {
  int number;
  String style;
  bool? chimney;

  Roof(this.number, this.style, this.chimney);

  @override
  String toString() {
    return 'Roof(number: $number, style: $style, chimney: $chimney)';
  }
}

// Class House
class House {
  String address;
  List<Tree> trees = [];  
  List<Window> windows = [];
  List<Roof> roofs = [];
  List<Door> doors = [];

  House(this.address);

  void addTree(Tree newTree) {
    this.trees.add(newTree);
  }

  void addWindow(Window newWindow) {
    this.windows.add(newWindow);
  }

  void addRoof(Roof newRoof) {
    this.roofs.add(newRoof);
  }

  void addDoor(Door newDoor) {
    this.doors.add(newDoor);
  }

  void printhouse() {
    print('House Address: $address');
    print('Trees: ${trees.join(', ')}');
    print('Windows: ${windows.join(', ')}');
    print('Roofs: ${roofs.join(', ')}');
    print('Doors: ${doors.join(', ')}');
  }
}

void main() {
  House house1 = new House("Phnom Penh");
  Door door = new Door("black", "center");
  Roof roof = new Roof(1, "triangle", true);
  Window window1 = new Window("red", "left", 1);
  Window window2 = new Window("green", "right", 1);
  Window window3 = new Window("red", "left", 0);
  Window window4 = new Window("red", "right", 0);

  house1.addDoor(door);
  house1.addWindow(window1);
  house1.addWindow(window2);
  house1.addWindow(window3);
  house1.addWindow(window4);
  house1.addRoof(roof);
  
  house1.printhouse();
}
