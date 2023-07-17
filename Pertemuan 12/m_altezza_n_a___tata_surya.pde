float sunRadius = 150;

// Planet properties
String[] planetNames = {"Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"};
float[] planetSizes = {6, 12, 15, 9, 54, 45, 36, 36};
float[] planetDistances = {180, 300, 420, 540, 660, 780, 900, 1020};
float[] planetSpeeds = {
  0.1,    // Mercury
  0.06,   // Venus
  0.04,   // Earth
  0.027,  // Mars
  0.0042, // Jupiter
  0.0017, // Saturn
  0.0008, // Uranus
  0.0005  // Neptune
  };
float[] planetAngles = new float[8];

color[] planetColors = {
  color(150, 150, 150), 
  color(255, 204, 0),   
  color(0, 102, 255),  
  color(255, 102, 0),   
  color(255, 179, 102), 
  color(222, 184, 135), 
  color(135, 206, 235), 
  color(68, 114, 196)   
};

float saturnRadius = 45; 
float saturnRingSize = 75; 
int saturnRingCount = 120;

void setup() {
  size(1000, 1000, P3D);
  background(100);
}

void draw() {
  background(255);
  translate(width/2, height/2);
  
  // tanpa cahaya supaya tidak mengganggu warna
  noLights();
  
  // matahari
  fill(255, 255, 0);
  sphere(sunRadius);
  
  // planet
  for (int i = 0; i < 8; i++) {
    pushMatrix();
    rotateY(planetAngles[i]);
    translate(planetDistances[i], 0);
    
    fill(planetColors[i]);
    sphere(planetSizes[i]);
    
    if (planetNames[i].equals("Saturn")) {
      pushMatrix();
      rotateX(PI / 6); 
      fill(222, 184, 135); 
      
      for (int j = 0; j < saturnRingCount; j++) {
        float angle = map(j, 0, saturnRingCount, 0, TWO_PI);
        float x = (saturnRadius + saturnRingSize) * cos(angle);
        float y = (saturnRadius + saturnRingSize) * sin(angle);
        ellipse(x, y, saturnRingSize, 1);
      }
      
      popMatrix();
    }
    
    popMatrix();
    
    planetAngles[i] += planetSpeeds[i];
  }
}
