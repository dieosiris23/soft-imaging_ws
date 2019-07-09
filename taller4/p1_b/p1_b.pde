import processing.video.Movie;
Movie video1, video2;
PImage ramen;
PShape can;
PShader shaderCan;
float angle;
float cm11;
float cm12;
float cm13;
float cm21;
float cm22;
float cm23;
float cm31;
float cm32;
float cm33;

void setup() {
  size(400, 400, P2D);
  video2 = new Movie(this, "rabbit.mp4");
  video2.loop();
  video1 = video2;
  cm11 = 0;
  cm12 = 0;
  cm13 = 0;
  cm21 = 0;
  cm22 = 1;
  cm23 = 0;
  cm31 = 0;
  cm32 = 0;
  cm33 = 0;
  shaderCan = loadShader("masksConvolutions.glsl");
}

void movieEvent(Movie movie) {
  movie.read();
}

void draw() {    
  background(12);
  image(video1,0,0,400,400);
  setMask();
  shader(shaderCan);
  println(frameRate);
}

void setMask(){  
  shaderCan.set("cm11",cm11);
  shaderCan.set("cm12",cm12);
  shaderCan.set("cm13",cm13);
  shaderCan.set("cm21",cm21);
  shaderCan.set("cm22",cm22);
  shaderCan.set("cm23",cm23);
  shaderCan.set("cm31",cm31);
  shaderCan.set("cm32",cm32);
  shaderCan.set("cm33",cm33);
}

void keyPressed(){
  if (key == '5') { /* Set Identity Kernel */
    cm11 = 0;
    cm12 = 0;
    cm13 = 0;
    cm21 = 0;
    cm22 = 1;
    cm23 = 0;
    cm31 = 0;
    cm32 = 0;
    cm33 = 0;
  } else if (key == 'z') { /* Blur Kernel */
    cm11 = 0.1111;
    cm12 = 0.1111;
    cm13 = 0.1111;
    cm21 = 0.1111;
    cm22 = 0.1111;
    cm23 = 0.1111;
    cm31 = 0.1111;
    cm32 = 0.1111;
    cm33 = 0.1111;
  } else if (key == 'x') { /* Edge detection Kernel */
    cm11 = -1;
    cm12 = -1;
    cm13 = -1;
    cm21 = -1;
    cm22 = 8;
    cm23 = -1;
    cm31 = -1;
    cm32 = -1;
    cm33 = -1;
  } else if (key == 'c') { /* Laplacian Kernel */
    cm11 = 0;
    cm12 = -1;
    cm13 = 0;
    cm21 = -1;
    cm22 = 4;
    cm23 = -1;
    cm31 = 0;
    cm32 = -1;
    cm33 = 0;
  } else if (key == 'v') { /* Horizontal Sobel */
    cm11 = -1;
    cm12 = -2;
    cm13 = -1;
    cm21 = 0;
    cm22 = 0;
    cm23 = 0;
    cm31 = 1;
    cm32 = 2;
    cm33 = 1;
  } else if (key == 'b') { /* Vertical Sobel */
    cm11 = -1;
    cm12 = 0;
    cm13 = 1;
    cm21 = -2;
    cm22 = 0;
    cm23 = 2;
    cm31 = -1;
    cm32 = 0;
    cm33 = 1;
  }
}
