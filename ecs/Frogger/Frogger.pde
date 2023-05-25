// sambroussard | 25 April | Frogger
boolean play;
Frog David;
log l1, l2, l3;
Car c1, c2;
gator g1, g2;
PImage bg;
int lives;
float logDist, log2Dist, log1Dist;
float CarDist, Car1Dist;

void setup () {
  size(600, 800);
  David = new Frog();
  l1 = new log(false);
  l2 = new log(true);
  l3 = new log(false);
  c1 = new Car();
  g1 = new gator();
  lives= 1;
  play = false;
}


void draw () {
  log1Dist = dist(David.x, David.y, l1.x, l1.y);
  println(log1Dist);
  if (!play) {
    startScreen();
  } else {
    background (128);
    drawBackground();
    infoPanel();
    l1.display();
    l1.move('a');
    l2.display();
    l2.move('d');
    l3.display();
    l3.move('a');
    c1.display();
    c1.move('a');
    g1.display();
    g1.move('d');

    David.display();

    if (log1Dist<50) {
      David.x = l1.x;
    }

    if (David.y>height || David.x< 0 || David.x>width) {
      gameOver();
    }
  }
}
void keyPressed() {
  if (key == 'w') {
    David.move ('w');
  } else if (key == 's') {
    David.move ('s');
  } else if (key == 'd') {
    David.move ('d');
  } else if (key == 'a') {
    David.move ('a');
  } else if (key == ' ') {
    play = true;
  }
}

void drawBackground() {
  //image(bg,0,0);
  fill(0, 200, 23);
  rect(0, 700, width, 150);
  fill(0, 0, 200);
  rect(0, 180, width, 200);
}

void startScreen() {
  background(0);
  fill(255);
  textSize(20);
  textAlign(CENTER);
  text ("Frogger", width/2, 300);
  text ("By Matea And Sam", width/2, 340);
  text ("Use WASD To Move", width/2, 360);
  text ("Press The Space Bar ", width/2, 380);
}

void gameOver () {
  background(0);
  fill(255);
  textAlign(CENTER);
  textSize (40);
  text ("Game Over", width/2, 300);
  text ("Score: " + lives, width/2, 340);
  noLoop();
  ;
}



void infoPanel() {
  fill(128, 128);
  rect(0, 0, width, 50);
  fill(255);
  text("lives: " +lives, 50, 40);
}
