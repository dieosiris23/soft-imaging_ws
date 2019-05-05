  
import processing.video.*;
PGraphics pg1;
Movie myMovie,myMovieG;

void setup() {
  size(900, 900);
  frameRate(60);
  myMovie = new Movie(this, "totoro.mov");
  myMovieG = new Movie(this, "totoro.mov");
  
  myMovie.loop();
  myMovieG.loop();
  
  frameRate(30);
}

void draw() {
  myMovie.loadPixels();
  myMovieG.loadPixels();
  
  //println(frameRate);
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
     //println(frameRate);
    }
  }
  
   
  //image(myMovieG, 0, 600, 600, 300);
  String s = Float.toString(frameRate);
  s = "Frame Rate " + s;
  text(s, 10, 10, 70, 80);

  
  
}

// Called every time a new frame is available to read
void movieEvent(Movie m) {
  m.read();
}
