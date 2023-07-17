float angle = 0;

void setup(){
  size(500,500);
}
void draw() {
  background(255);
  fill(233,168,82);
  rotate(angle);
  translate(mouseX, mouseY);
  rect(-50,-50,100,100);
  rect(-15, -15, 30, 30);
  angle += 0.1;
}

//rotate then translation
