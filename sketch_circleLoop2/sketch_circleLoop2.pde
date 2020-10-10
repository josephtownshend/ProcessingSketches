
float arcSize = 400;

void setup() {
   size(800,800); 
}


void draw() {
  background(#eeeeee);
  
  mouseX = constrain(mouseX, 10, width);
  mouseY = constrain(mouseY, 10, height);

 
  noFill();
  stroke(20);
  strokeWeight(5);
  
  for (int y=0; y<height; y+=mouseY) {
    for (int x=0; x<width; x+=mouseX) {
      arc(x,y, arcSize, arcSize, 0, PI);
    }
  }
}
