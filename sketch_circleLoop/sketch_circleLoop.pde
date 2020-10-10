
float arcSize = 400;

void setup() {
   size(800,800); 
}


void draw() {
  background(#eeeeee);
  noFill();
  stroke(20);
  strokeWeight(66);
  float arcL = map(mouseX, 0, width, 0, TWO_PI);
  arc(width/2,height/2, arcSize, arcSize, 0, arcL);
}
