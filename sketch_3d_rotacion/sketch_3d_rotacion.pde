import processing.core.*;

float angleX, angleY, angleZ; 
float rotationSpeed = 0.05;
float translateSpeed = 5;

void setup() {
size (800, 600, P3D);
}

void draw() {
background (255);
lights();
translate (width/2, height/2, 0);
rotateX(angleX);
rotateY(angleY);
rotateZ(angleZ);

  // Bagian kiri dari huruf N
  pushMatrix();
  fill(#8696FE);
  translate(-110, 0, 0); // Geser ke kiri
  box(20, 91, 20);
  popMatrix();


  // Bagian diagonal dari huruf N
  pushMatrix();
  fill(#8696FE);
  translate(-80, 0, 0); // Pusat
  rotateZ(PI/-5); // Rotasi sebesar 45 derajat pada sumbu Z
  translate(0, 0, 0);
  box(20, 100, 15);
  popMatrix();
  
  // Bagian kanan dari huruf N
  pushMatrix();
  fill(#8696FE);
  translate(-50, 0, 0); // Geser ke kiri
  box(20, 95, 20);
  popMatrix();

// Membuat huruf "H"
pushMatrix();
fill(#8696FE);
box (20, 95, 20); 
translate (35, 0, 0);
box (50, 20, 10);
translate (35, 0, 0);
box (20, 95, 20);
popMatrix();



// Menggerakkan huruf dengan input keyboard
if (keyPressed) {
if (key == 'w' || key == 'W') {
angleX -= rotationSpeed;
} else if (key == 's' || key == 'S') {
angleX += rotationSpeed;
} else if (key == 'a' || key == 'A') {
angleY -=rotationSpeed;
} else if (key == 'd' || key == 'D') {
angleY += rotationSpeed;
}
}
}
