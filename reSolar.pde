import peasy.*;

Planet sun;

PeasyCam cam;

PImage sunTexture; 
PImage[] textures = new PImage[4];

void setup() {
  size(600,600, P3D);
  sunTexture = loadImage("sunmap.jpg");
  textures[0] = loadImage("plutomap1k.jpg");
  textures[1] = loadImage("venusmap.jpg");
  textures[2] = loadImage("neptunemap.jpg");
  textures[3] = loadImage("earthmap1k.jpg");
  cam = new PeasyCam(this, 500);
  sun = new Planet(50, 0, 0, sunTexture);
  sun.spawnMoons(5, 1);
}

void draw() {
  background(0);
  pointLight(255,255,255,255,0,255);
  sun.show();
  sun.orbit();
}
