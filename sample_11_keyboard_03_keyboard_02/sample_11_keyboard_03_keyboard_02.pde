color value;

void setup() {
  size(500, 500);
  value = #FFFFFF;
}

void draw() {
  fill(value);
  rect(100, 100, width-200, height-200);
}

void keyPressed(){
  if (value == #FFFFFF){
    value = #000000;
  } else{
    value = #FFFFFF;
  }
}
