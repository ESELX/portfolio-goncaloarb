import processing.pdf.*;

boolean saveOneFrame = false;


void setup() {
  size(900, 700);
  frameRate(24);
  background(255, 204, 0);
}

void draw() {
  
    if(saveOneFrame == true) {
    beginRecord(PDF, "Line.pdf"); 
  }
  
  stroke(0);
  line(mouseX, mouseY,  random(width),random(height));
  
    if(saveOneFrame == true) {
    endRecord();
    saveOneFrame = false; 
  }
  
}

void mousePressed() {
  saveOneFrame = true; 
}
