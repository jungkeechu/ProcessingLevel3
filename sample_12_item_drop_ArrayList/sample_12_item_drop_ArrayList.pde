ArrayList<PVector> items;
FloatList speeds;

void setup() {
  size(600, 900);
  initItems();
}

void draw() {
  background(255);
  updateItems();
  drawItems();
}

void initItems() {
  items = new ArrayList<PVector>();
  speeds = new FloatList();
}

void mousePressed(){
  items.add(new PVector(mouseX, mouseY));
  speeds.append(random(5, 10));
}

void updateItems() {
  for (int i = 0; i < items.size(); i++) {
    PVector item = items.get(i);
    item.y += speeds.get(i);
    if (item.y > height){
      items.remove(i);
      speeds.remove(i);
    }
  }
}

void drawItems( ) {
  fill(0);
  for (int i = 0; i < items.size(); i++) {
    PVector item = items.get(i);
    ellipse(item.x, item.y, 30, 30);
  }
  println(items.size());
}
