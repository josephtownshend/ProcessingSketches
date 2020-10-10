PImage img;

void setup() {
  size(800,800);
  img = loadImage("ceramic-greek-statue.jpg");
  noLoop();
  
}
void draw() {
  float x = random(width);
  float y = random(height);
  float a = random(0, TWO_PI);
  background(0);
  translate(x,y);
  rotate(a);
  image(img, -img.width/2, -img.height/2);
}

void mousePressed() {
  redraw();
}
