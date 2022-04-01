float [] x = new float [10];
float [] y = new float [10];
float [] speed = new float [10];
float [] radius = new float [10];

void setup(){
  size(600, 600);
  
  for(int i=0; i<10; i++){
    x[i] = 0;
    y[i] = 0;
    speed[i] = 0.1 - (0.1 * i/10);
    radius[i] = 100 - i*10;
  }
}

void draw(){
  background(255);

  for(int i=0; i<10; i++){
    x[i] += (mouseX - x[i]) * speed[i]; 
    y[i] += (mouseY - y[i]) * speed[i];
    fill(radius[i]*2.5);
    ellipse(x[i], y[i], radius[i], radius[i]);
  }
}
