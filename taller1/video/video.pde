  
import processing.video.*;
PGraphics pg1;
float[][] kernel = {{ 0, -1, 0}, 
                    { -1,  5, -1}, 
                    { 0, -1, 0}};
Movie myMovie,myMovieG,myMovieC,myMovieO;

void setup() {
  size(1200, 600);
  frameRate(60);
  myMovie = new Movie(this, "totoro.mov");
  myMovieG = new Movie(this, "totoro.mov");
  myMovieC = new Movie(this, "totoro.mov");
  myMovieO = new Movie(this, "totoro.mov");
  myMovie.loop();
  myMovieG.loop();
  myMovieC.loop();
  myMovieO.loop();
}

void draw() {
  myMovie.loadPixels();
  myMovieG.loadPixels();
  myMovieC.loadPixels();
  myMovieO.loadPixels();
  image(myMovie, 0, 0, 600, 300);
   for (int x = 0; x < 600; x++) {
    for (int y = 0; y < 300; y++ ) {
     color c = get(x,y);
     float red = red(c);
     float green = green(c);
     float blue = blue(c);
     int grey =(int)(0.299*red + 0.587*green + 0.114*blue);
     color Color = color(grey,grey,grey);
     set(x,y+300,Color);
    }
  }
  String s = Float.toString(frameRate);
  s = "Frame Rate " + s;
  text(s, 10, 10, 70, 80);
  for (int y = 1; y < myMovie.height-1; y++) { // Skip top and bottom edges
    for (int x = 1; x < myMovie.width-1; x++) { // Skip left and right edges
      float sum = 0; // Kernel sum for this pixel
      for (int ky = -1; ky <= 1; ky++) {
        for (int kx = -1; kx <= 1; kx++) {
          int pos = (y + ky)*myMovie.width + (x + kx);
          float val = red(myMovie.pixels[pos]);
          sum += kernel[ky+1][kx+1] * val;
        }
      }
      set(x+599,y-1,color(sum, sum, sum));
    }
  } 
  myMovieC.updatePixels();
  myMovieO.updatePixels();
}
void movieEvent(Movie m) {
  m.read();
}
