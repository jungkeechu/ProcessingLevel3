// line drawing

void setup(){
  size(600, 600);
}


void draw(){
  background(255);
  for(int i=0; i<width; i++ ){
    stroke( abs(mouseX-i) * 255 / width) ;
    line(i,0, i,height);
  }
}
