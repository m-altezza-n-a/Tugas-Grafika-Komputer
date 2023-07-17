void setup(){
  size(500,500);
}
void draw() {
  background(255);
  fill(233,168,82);
  pushMatrix();
  translate(mouseX, mouseY);
  rect(0,0,50,50);
  popMatrix();
  translate(55, 10);
  rect(0, 0, 25, 25);
}

//push and pop, isolating transformation
