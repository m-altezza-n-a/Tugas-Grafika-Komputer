void setup (){
  size(1000,1000);
}

void draw (){
  background(255);
  drawCircle(width/2,height/2,200);
}

void drawCircle(float x, float y, float radius){
 stroke(0);
 
 ellipse(x, y, radius, radius);
 if(radius > 2) {
   drawCircle(x + radius/2, y, radius/2);
   drawCircle(x - radius/2, y, radius/2);
   //drawCircle(x, y + radius/2, radius/2);
   //drawCircle(x, y - radius/2, radius/2);
 
 
 }
 
}
