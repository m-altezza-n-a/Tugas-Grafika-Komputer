float angle = 0.0;
float angleDirection = 1;
float speed = 0.005;

void setup(){
  size(500,500);
}
void draw() {
  background(255);
  translate(20,25);
  rotate(angle);
  strokeWeight(12);
  line(0,0,40,0);
  translate(40,0);
  rotate(angle * 2.0);
  strokeWeight(6);
  line(0,0,30,0);
  translate(30, 0);
  rotate(angle * 2.5);
  strokeWeight(3);
  line(0, 0, 20, 0);
  angle += speed * angleDirection;
  if ((angle > QUARTER_PI) || (angle < 0)) {
    angleDirection = -angleDirection;
  }
}

//articulating arm
