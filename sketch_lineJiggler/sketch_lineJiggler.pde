int numLines = 5000;
MovingLine[] lines = new MovingLine[numLines];
int currentLine = 0;

void setup() {
  size(1000, 1000);
  strokeWeight(10);
  stroke(255,66,66);
  for (int i = 0; i < 5000; i++) {
    lines[i] = new MovingLine();
  }
}

void draw() {
  background(204);
  for (int i = 0; i < currentLine; i++) {
    lines[i].display();
  }
}

void mouseDragged() {
  lines[currentLine].setPosition(mouseX, mouseY, 
                 pmouseX, pmouseY);
  if (currentLine < numLines - 1) {
    currentLine++;
  }
}

void keyPressed() {
    saveFrame("mouse_output_4.png");
}

class MovingLine {
  float x1, y1, x2, y2;
  
  void setPosition(int x, int y, int px, int py) {
    x1 = x;
    y1 = y;
    x2 = px;
    y2 = py;
  }
  
  void display() {
    x1 += random(-0.5, 0.5);
    y1 += random(-0.5, 0.5);
    x2 += random(-0.5, 0.5);
    y2 += random(-0.5, 0.5);
    line(x1, y1, x2, y2);
  }
}
