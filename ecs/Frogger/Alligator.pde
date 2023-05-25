class gator {
  int x, y;
  PImage gator;

  gator() {

    x = width/2;
    y = height-520;
    gator = loadImage("gator.png");
  }


  void display() {
    imageMode(CENTER);
    image(gator, x, y);
  }

  void move (char dir) {
    if (dir == 'a') {
      x = x-5;
      if (x<0) {
        x = width;
      }
    } else if (dir == 'd') {
      x = x +4;
      if (x>width) {
        x=0;
      }
    }
  }
}
