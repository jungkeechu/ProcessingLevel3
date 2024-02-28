PImage player;
int xPos, yPos;

void setup() {
  size(600, 600);
  player = loadImage("left.png");
  xPos = width/2;
  yPos = height-50;
  imageMode(CENTER);
}

void draw() {
  background(255);
  image(player, xPos, yPos, 100, 100);
  if (keyPressed) playerMove();
}

void playerMove() {
  if ( key == CODED ) {
    if ( keyCode == LEFT ) {
      xPos -= 10;
      if (xPos < 0) {
        xPos = 0;
      }
    }
    else if ( keyCode == RIGHT ) {
      xPos += 10;
      if (xPos > width){
        xPos = width;
      }
    }
  }
}
