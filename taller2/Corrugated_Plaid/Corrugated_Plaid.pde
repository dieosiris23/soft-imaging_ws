PGraphics pg;
int value;
void setup(){
   size(525,250);
   pg = createGraphics(700, 700);
   value = 0;
}

void draw(){
  pg.beginDraw();
  pg.background(51,51,51);
  pg.noStroke();
  pg.fill(171);
  pg.rect(50,0,50,40);
  pg.rect(150,0,50,40);
  pg.rect(250,0,50,40);
  pg.rect(350,0,50,40);
  pg.fill(114);
  pg.rect(100,0,50,40);
  pg.rect(200,0,50,40);
  pg.rect(300,0,50,40);
  pg.rect(400,0,50,40);
  pg.fill(220);
  pg.quad(50,40,150,40,125,60,75,60);
  pg.fill(171);
  pg.quad(100,40,200,40,175,60,125,60);
  pg.fill(65);
  pg.quad(150,40,200,40,225,60,175,60);
  pg.fill(171);
  pg.quad(200,40,250,40,275,60,225,60);
  pg.fill(220);
  pg.quad(250,40,300,40,325,60,275,60);
  pg.fill(171);
  pg.quad(300,40,350,40,375,60,325,60);
  pg.fill(65);
  pg.quad(350,40,400,40,425,60,375,60);
  pg.fill(171);
  pg.quad(400,40,450,40,475,60,425,60);
  pg.fill(171);
  pg.rect(75,60,50,40);
  pg.rect(175,60,50,40);
  pg.rect(275,60,50,40);
  pg.rect(375,60,50,40);
  pg.fill(114);
  pg.rect(125,60,50,40);
  pg.rect(225,60,50,40);
  pg.rect(325,60,50,40);
  pg.rect(425,60,50,40);
  pg.fill(65);
  pg.quad(75,100,125,100,100,120,50,120);
  pg.quad(175,100,225,100,200,120,150,120);
  pg.quad(275,100,325,100,300,120,250,120);
  pg.quad(375,100,425,100,400,120,350,120);
  pg.fill(15);
  pg.quad(125,100,175,100,150,120,100,120);
  pg.quad(225,100,275,100,250,120,200,120);
  pg.quad(325,100,375,100,350,120,300,120);
  pg.quad(425,100,475,100,450,120,400,120);
  pg.fill(171);
  pg.rect(50,120,50,40);
  pg.rect(150,120,50,40);
  pg.rect(250,120,50,40);
  pg.rect(350,120,50,40);
  pg.fill(114);
  pg.rect(100,120,50,40);
  pg.rect(200,120,50,40);
  pg.rect(300,120,50,40);
  pg.rect(400,120,50,40);
  pg.endDraw();
  background(51);
  image(pg, 0, 50);
  fill(218,0,0);
  noStroke();
  if (value == 0) {
    rect(100,0,75,250);
    rect(200,0,75,250);
  }
}
void mouseClicked() {
  if (value == 0) {
    value = 1;
  } else {
    value = 0;
  }
}
