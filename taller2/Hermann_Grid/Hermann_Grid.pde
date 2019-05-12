PGraphics pg;
void setup(){
   size(700,700);
   pg = createGraphics(700, 700);
}

void draw(){
  pg.beginDraw();
  pg.background(255);
  pg.fill(0,0,0);
  for (int i = 0; i <= 700; i += 50){
      for (int j = 0; j < 750; j+= 50){
        pg.rect(i-20,j-20,40,40);
      }
  }
  pg.endDraw();
  image(pg, 0, 0);
}
