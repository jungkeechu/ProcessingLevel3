/*
1. we are going to make bricks with ellipse() function.
2. it is because of COLLISION DETECTION.
*/
int [] bricks = new int [10];
boolean [] alive = new boolean [10];

void setup() {
  size(600, 600);
  
  for(int i = 0; i < bricks.length; i++){
    bricks[i] = i * 100 + 50;
    alive[i] = true;
  }
  
  fill(#FF0000);
  noStroke();
}

void draw() {
  background(128);

  for(int i = 0; i < bricks.length; i++){
    if (alive[i]) {
      ellipse(bricks[i], width/2, 100, 100);
    }
  }
  
  fill(#FFFF00);
  ellipse(mouseX, mouseY, 30, 30);
  fill(#FF0000);
  
  // collision checking
  for(int i = 0; i < bricks.length; i++){
    if (dist(mouseX, mouseY, bricks[i], width/2) < 50+15 ) {
      alive[i] = false;
    }
  }
}
