class log {
  int x, y;
  PImage log;

  log(boolean right) {
    if (right) {
      x = width/2;
      y = height-600;
    } else {
      x = width/2;
      y = height-450;
    }
    log = loadImage("log3.png");
  }


  void display() {
    imageMode(CENTER);
    image(log, x, y);
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
