
import peasy.*;

PeasyCam cam;

int numStars = 100;
float[] x = new float[numStars];
float[] y = new float[numStars];
float[] z = new float[numStars];

float r = 0;


void setup() {

  cam = new PeasyCam(this, 100);
  cam.setMinimumDistance(50);
  cam.setMaximumDistance(1000);
  size(displayWidth/2, displayHeight/2, OPENGL);
  background(0);
  for (int i = 0; i < numStars; i++) { 
    x[i] = i;
    y[i] = i;
    z[i] = -100;
  }
  printArray(x);
  printArray(y);
  printArray(z);

  sphereDetail(10);
}


void draw() {
  smooth();
  colorMode(HSB);
  background(0);
  lights();
  for (int i = 0; i < numStars; i++) {
    translate(x[i], y[i]);
    rotate(r);
    noStroke();
    fill(map(r, 0, PI, 0, 255), 100,255);
    sphere(3);
  }
  if (r > PI) {
    r = 0;
  } else {
    r+= 0.001;
    
  }
  println(r);
}

