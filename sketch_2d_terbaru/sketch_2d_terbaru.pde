// Variables to store the position, rotation, and scale of the text
float x, y;
float rotation = 0;
float scaleFactor = 1.0;

void setup() {
  size(400, 400);
  // Initialize the starting position of the text
  x = width / 2;
  y = height / 2;
}

void draw() {
  background(255);
  // Draw the text with the current position, rotation, and scale
  pushMatrix();
  translate(x, y);
  rotate(radians(rotation));
  scale(scaleFactor);
  fill(0);
  textSize(64);
  text("NH", 0, 0);
  popMatrix();
}

void keyPressed() {
  // Move the text using ASWD keys
  if (key == 'a' || key == 'A') {
    x -= 5;
  } else if (key == 's' || key == 'S') {
    y += 5;
  } else if (key == 'w' || key == 'W') {
    y -= 5;
  } else if (key == 'd' || key == 'D') {
    x += 5;
  }
  
  // Rotate the text using arrow keys
  if (keyCode == LEFT) {
    rotation -= 10;
  } else if (keyCode == RIGHT) {
    rotation += 10;
  } else if (keyCode == UP) {
    rotation -= 10;
  } else if (keyCode == DOWN) {
    rotation += 10;
  }

  // Zoom in and out using + and - keys
  if (key == '+') {
    scaleFactor += 0.1;
  } else if (key == '-') {
    scaleFactor -= 0.1;
    // Ensure scale factor doesn't become negative or zero
    if (scaleFactor < 0.1) {
      scaleFactor = 0.1;
    }
  }
}
