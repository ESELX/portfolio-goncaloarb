import processing.pdf.*;




void setup() {
  size(900, 700);
  frameRate(24);
  beginRecord(PDF, "Line.pdf"); 
  background(255, 204, 0);
}

void draw() {

  
  stroke(0);
  line(mouseX, mouseY,  random(width),random(height));
  

  
}

void mousePressed() {
  endRecord();
}
