void setup(){
  size(500,500);
}
void draw() {
  background(255);
  fill(233,168,82);
  translate(mouseX, mouseY);
  float scalar = mouseX/60.0;
  scale(scalar);
  strokeWeight(1.0/scalar);
  rect(-10,-10,20,20);
}

//scale consistent stroke
