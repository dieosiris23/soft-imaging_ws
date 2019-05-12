void setup() {
  size(400, 400);
  background(255);
  int startcol = 0;
  for (int j = 0; j < 80; j++) {
    int col = startcol;
    for (int i = 0; i < 80; i++) {
      if (col == 0) {
        fill(0, 0, 255);
      } else {
        fill(255, 255, 0);
      }
      noStroke();
      rect(i*5, j*5, 5, 5);
      col = (col + 1) % 2;
    }
    startcol = (startcol + 1) % 2;
  }
}