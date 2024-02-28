// circle drawing

int size;

void setup(){
  size(600, 600);
  background(255);
  noStroke();
  size = 30;
}
void draw(){
  background(255);
  for(int i=0; i<width; i+=size ){
    for(int j=0; j<height; j+=size){
      fill( dist(mouseX, mouseY, i, j) );
      ellipse(i, j, size, size);
    }
  }
}
