import nub.primitives.*;
import nub.core.*;
import nub.processing.*;
Scene myScene;
PShader customShader;
PShape sphere;
PShape box;
PImage wallTexture1;
PImage wallTexture2;
color sphereColor;
color boxColor;
Node sphereNode;
Node boxNode;
boolean bumped = false;

void setup() {
  colorMode(RGB, 1);
  boxColor = color(0.101, 0.941, 1);
  sphereColor = color(1, 1, 1);
  size(600, 600, P3D);
  box = createShape(BOX, 200);
  sphere = createShape(SPHERE, 50);
  sphere.setFill(sphereColor);
  sphere.setStroke(sphereColor);
  sphere.noStroke();
  myScene = new Scene(this);
  myScene.setRadius(600);
  myScene.fit();
  boxNode = new Node(myScene, box);
  sphereNode = new Node(myScene, sphere);
  sphereNode.setPickingThreshold(0);
  sphereNode.randomize();
  customShader = loadShader("fragmentShader.glsl", "vertexShader.glsl");
  noStroke();
  wallTexture1 = loadImage("wall1.jpg");
  customShader.set("wallTexture1", wallTexture1);
  wallTexture1 = loadImage("wall2.jpg");
  customShader.set("wallTexture2", wallTexture1);
}

void draw(){
  background(12);
  shader(customShader);
  customShader.set("bumped",bumped);
  pointLight(red(sphereColor), green(sphereColor), blue(sphereColor), sphereNode.position().x(), sphereNode.position().y(), sphereNode.position().z());
  myScene.render();
}

void mouseClicked(){
  myScene.cast();
}

void keyPressed(){
  if(key == 'y'){
    bumped = true;
  } else if (key == 'f'){
    bumped = false;
  }
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
