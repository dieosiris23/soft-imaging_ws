void setup() {
  size(500, 500);
  frameRate(6);
  
  line(250,240,250,260);
  line(240,250,260,250);
}
float rot = 0;
int numCircles = 12;
int hidden=numCircles;
void draw() {
  
  background(170, 170, 170);
  translate(width/2, height/2);
  drawCircles();
  rot += 0.08;
  hidden--;
  if (hidden>numCircles)
    hidden=0;
  if (hidden<0)
    hidden=numCircles;
}
void drawCircles() {
  noStroke();
  fill(182, 102, 210, 70);
  float radius = 190;
  float angle = TWO_PI/(float)numCircles;
  for (int i = 0; i < numCircles; i++) {
    if (i!=hidden)
      ellipse(radius * sin(angle*i), radius * cos(angle*i), 40, 40);
  }
}
