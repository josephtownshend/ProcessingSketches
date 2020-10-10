
float sw, alpha;
float yStep = 10;
float arcSize = 400;

void setup() {
   size(800,800); 
}


void draw() {
  background(#eeeeee);
  
  mouseX = constrain(mouseX, 10, width);
  mouseY = constrain(mouseY, 10, height);

  yStep = mouseY;
  arcSize = mouseX;
 
  noFill();
  stroke(20);
  strokeWeight(5);
  
  for (int y=0; y<height; y+=yStep/2) {
    for (int x=0; x<width+arcSize; x+=arcSize) {
      arc(x,y, arcSize/2, arcSize/2, 0, PI);
      arc(x+arcSize/2,y, arcSize/2, arcSize/2,PI, TWO_PI);
    }
  }
}

// got to 4:18 - https://www.youtube.com/watch?v=1dPFgWT2Aio&ab_channel=thedotisblackcreativecoding
