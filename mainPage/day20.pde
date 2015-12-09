float x = 20.0;       // Initial x-coordinate
float y = 10.0;       // Initial y-coordinate
float endX = width-100;    // Destination x-coordinate
float endY = height/2;    // Destination y-coordinate
float easing = 0.02;  // Size of each step along the path
float trans = 0;


void day20() {

  fill(255);
  trans = trans+1;
  float d = dist(x, y, endX, endY);
  if (d > 1.0) {
    x += (endX - x) * easing*2;
    y += (endY - y) * easing;
  }
  starFall(x, y, 10, 10);
}

void starFall(float xP, float yP, float wid, float hei) {

  fill(255);
  ellipse(xP, yP, wid, hei);
}