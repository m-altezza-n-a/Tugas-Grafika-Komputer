void setup(){
  size(500,500);
}
void draw() {
  background(255);
  fill(233,168,82);
  translate(mouseX, mouseY);
  scale(mouseX/60.0);
  rect(-10,-10,20,20);
}

//scale
