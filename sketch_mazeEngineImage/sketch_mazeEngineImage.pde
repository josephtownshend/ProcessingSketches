void setup() {
  size(800,800);
  frameRate(1);
  background(0);
}
PImage alphaImg;

void draw() {
  alphaImg = loadImage("dwp.png");
  int u = 50; // maze detail
  float threshold = 0.5;
  strokeWeight(5);
  stroke(255);
  
  for (int y = 0; y < 800; y += u) {
    for (int x = 0; x < 800; x += u) {
      float r = random(1);
      if (r > threshold) {
        line(x, y, x+u, y+u);
        image(alphaImg,x+u,y+u);
      } else {
        line(x, y+u, x+u, y);
        image(alphaImg,x+u,y);
      }
    } 
  }
}

void mousePressed() {
  saveFrame("mouse_output_4.png");
}
