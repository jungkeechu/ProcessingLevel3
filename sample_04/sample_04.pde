// point drawing

void setup(){
  size(512, 256);
  background(255);
  stroke(128);
}

void draw(){
  for(int i=0; i<width; i++ ){
    for(int j=0; j<height; j++){
      stroke( dist(mouseX, mouseY, i, j) );
      point(i,j);
    }
  }
}
