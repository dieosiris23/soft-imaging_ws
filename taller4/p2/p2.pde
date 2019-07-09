import nub.primitives.*;
import nub.core.*;
import nub.processing.*;
Scene myScene;
PShader customShader;
PShape sphere;
PShape can;
color sphereColor;
color canColor;
Node sphereNode;
Node canNode;

void setup() {
  colorMode(RGB, 1);
  canColor = color(0.101, 0.941, 1);
  sphereColor = color(1, 1, 1);
  size(600, 600, P3D);
  can = createCan(100, 200, 32);
  sphere = createShape(SPHERE, 50);
  sphere.setFill(sphereColor);
  sphere.setStroke(sphereColor);
  sphere.noStroke();
  myScene = new Scene(this);
  myScene.setRadius(600);
  myScene.fit();
  canNode = new Node(myScene, can);
  sphereNode = new Node(myScene, sphere);
  sphereNode.setPickingThreshold(0);
  sphereNode.randomize();
  customShader = loadShader("fragmentShader.glsl", "vertexShader.glsl");
}

void draw(){
  background(12);
  shader(customShader);
  pointLight(red(sphereColor), green(sphereColor), blue(sphereColor), sphereNode.position().x(), sphereNode.position().y(), sphereNode.position().z());
  myScene.render();
}

void mouseClicked(){
  myScene.cast();
}

void mouseDragged(){
  if (mouseButton == RIGHT)
    myScene.spin();
  else if (mouseButton == LEFT)
    myScene.translate();
  else
    myScene.scale(mouseX - pmouseX);
}

void mouseWheel(MouseEvent event) {
  myScene.moveForward(event.getCount() * 20);
}

PShape createCan(float radius, float height, int det) {
  textureMode(NORMAL);
  PShape shape = createShape();
  shape.beginShape(QUAD_STRIP);
  shape.fill(canColor);
  shape.noStroke();
  for (int i = 0; i <= det; i++) {
    float angle = 2*PI / det;
    float xCoord = sin(i * angle);
    float zCoord = cos(i * angle);
    float yCoord = float(i) / det;
    shape.normal(xCoord, 0, zCoord);
    shape.vertex(xCoord * radius, -height/2, zCoord * radius, yCoord, 0);
    shape.vertex(xCoord * radius, +height/2, zCoord * radius, yCoord, 1);    
  }
  shape.endShape(); 
  return shape;
}
