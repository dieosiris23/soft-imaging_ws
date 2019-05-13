boolean rotating = false;
boolean dissapear = false;
float a = 0;
float b =4 ;

void setup() {
  size(800, 800);
}

void draw() {
  background(255);
  translate(400, 400);
  rotate(a);
  if (rotating) {
    a += PI/b;
  }
  fill(255, 0, 0);
  noStroke();
  arc(0, 0, 500, 500, 0, PI/4);
  arc(0, 0, 500, 500, PI/2, 3*PI/4);
  arc(0, 0, 500, 500, PI, 5*PI/4);
  arc(0, 0, 500, 500, 3*PI/2, 7*PI/4);
  if (dissapear) {
    fill(0, 255, 255);
  } else {
    fill(0, 255, 0);
  }
  arc(0, 0, 500, 500, PI/4, PI/2);
  arc(0, 0, 500, 500, 3*PI/4, PI);
  arc(0, 0, 500, 500, 5*PI/4, 3*PI/2);
  arc(0, 0, 500, 500, 7*PI/4, TWO_PI);
}

void mousePressed() {
  if (mouseButton == LEFT) {
    rotating = !rotating;
  } else if (mouseButton == RIGHT) {
    dissapear = !dissapear;
  }
}
