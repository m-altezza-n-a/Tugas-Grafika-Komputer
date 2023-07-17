float angle = 0;

void setup(){
  size(500,500);
}
void draw() {
  background(255);
  fill(192,192,192);
  translate(mouseX, mouseY);
  
  rotate(angle);
  rect(-50,-50,100,100);
  
  triangle(-15, 30, 30, 30, 30, -15);
  
  circle(200, 150, 220);
  
  angle += 0.05;
}

//translation then rotate
