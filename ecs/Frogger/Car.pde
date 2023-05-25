class Car {
  int x, y;
  PImage Car;

  Car() {

    x = width/2;
    y = height-100;
    Car = loadImage("pickup1.png");
  }


  void display() {
    imageMode(CENTER);
    image(Car, x, y);
  }

  void move (char dir) {
    if (dir == 'a') {
      x = x-3;
      if (x<0) {
        x = width;
      }
    } else if (dir == 'd') {
      x = x +3;
      if (x>width) {
        x=0;
      }
    }
  }
}
