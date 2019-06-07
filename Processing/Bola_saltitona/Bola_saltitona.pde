void setup ()
{
  size(900,700);
}

float ballX = 0;
float ballY = 0;
float speedX = 7;
float speedY = 7;

void draw ()
{
  if(ballX < 0 || ballX > width) speedX = -speedX;
  if(ballY > height) speedY = -speedY;
  
  else speedY += 2;
  
  ballX += speedX;
  ballY += speedY;
  
  background(255, 204, 0);
  ellipse(ballX, ballY, 50, 50);
  rect(mouseX, mouseY, height-3, 10, 3);
}
