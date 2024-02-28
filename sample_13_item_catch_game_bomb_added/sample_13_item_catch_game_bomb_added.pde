// for characters and images
PImage [] player = new PImage[2];
int xPos, yPos, dir;
PImage backgroundImg, bombImg, itemImg;
ArrayList<PVector> items;
FloatList speeds;
ArrayList<PVector> bombs;
int score;

void setup() {
  size(600, 600);
  player[0] = loadImage("left.png");
  player[1] = loadImage("right.png");
  itemImg = loadImage("apple.png");
  backgroundImg = loadImage("background.jpg");
  bombImg = loadImage("bomb.png");

  xPos = width/2;
  yPos = height-50;
  dir = 0;
  imageMode(CENTER);
  score = 0;
  initItems();
}

void draw() {
  background(255);
  image(backgroundImg, width/2, height/2, width, height); // background
  playerMove();
  image(player[dir], xPos, yPos, 100, 100); // player
  collisionDetection();

  updateItems();
  drawItems();

  if (frameCount % 50 == 0) {
    addItem();
  }

  drawScore();
}

void playerMove(){
  if (keyPressed) {
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
}

void drawScore() {
  text("SCORE: " + score, 10, 10);
}

void collisionDetection() {
  // item gathering
  for (int i = 0; i < items.size(); i++) {
    PVector item = items.get(i);
    if (dist(item.x, item.y, xPos, yPos) < 40) {
      fill(#FFFF00);
      ellipse(xPos, yPos, 200, 200);
      score++;
      items.remove(i);
    }
  }

  // need code for bomb collision
  
  
}


void initItems() {
  items = new ArrayList<PVector>();
  speeds = new FloatList();
  bombs = new ArrayList<PVector>();
}

void updateItems() {
  for (int i = 0; i < items.size(); i++) {
    PVector item = items.get(i);
    item.y += speeds.get(i);
    if (item.y > height) {
      items.remove(i);
      speeds.remove(i);
    }
  }

  for (int i = 0; i < bombs.size(); i++) {
    PVector bomb = bombs.get(i);
    bomb.y ++;
    if (bomb.y > height) {
      bombs.remove(i);
    }
  }
}

void drawItems( ) {
  for (int i = 0; i < items.size(); i++) {
    PVector item = items.get(i);
    image(itemImg, item.x, item.y, 30, 30);
  }

  for (int i = 0; i < bombs.size(); i++) {
    PVector bomb = bombs.get(i);
    image(bombImg, bomb.x, bomb.y, 30, 30);
  }
}

void addItem() {
  items.add(new PVector(random(width), random(0, 100)));
  speeds.append(random(1, 2));
  bombs.add(new PVector(random(width), random(0, 100)));
}
