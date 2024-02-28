PImage [] player = new PImage[2];
int xPos, yPos;
int dir;

void setup() {
  size(600, 600);
  player[0] = loadImage("left.png");
  player[1] = loadImage("right.png");
  dir = 0;
  xPos = width/2;
  yPos = height - 50;

  imageMode(CENTER);
}

void draw() {
  background(255);
  image(player[dir], xPos, yPos, 100, 100);
  if (keyPressed){
    playerMove();
  }
}

void playerMove() {
  if ( key == CODED ) {
    if ( keyCode == LEFT ) {
      xPos -= 10;
      dir = 0;
      if (xPos < 0) {
        xPos = 0;
      }
    } else if ( keyCode == RIGHT ) {
      xPos += 10;
      dir = 1;
      if (xPos > width) {
        xPos = width;
      }
    }
  }
}
