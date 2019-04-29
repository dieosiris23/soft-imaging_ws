float[][] kernel = {{ -1, -1, -1}, 
                    { -1,  9, -1}, 
                    { -1, -1, -1}};
                    
PImage img;
PImage img2, img3,img4,img5;

size(1500,1500);

img = createImage(200,200,RGB);

for(int i = 0; i<img.width;i++){
  for(int j =0; j< img.height;j++){
    int pos = i + j*img.height;
    if(i%2 == 0){
      img.pixels[pos] = color(255);
      img.pixels[pos+1] = color(255);
      i++;
    }else{
      img.pixels[pos] = color(0);
    }
  }
}
//image(img,10,10);


img2 = loadImage("capucho.jpeg");
img3 = loadImage("capucho.jpeg");
img4 = loadImage("capucho.jpeg");
//image(img3,220,10);


float threshold = 127;
int[] hist = new int[256];
for(int i = 0; i<256; i++){
  hist[i] = 0;
}

for(int i = 0; i < img2.width;i++){
  for(int j =0; j< img2.height;j++){
    int pos = i + j*img2.width;
    float r = red(img2.pixels[pos]);
    float g = green(img2.pixels[pos]);
    float b = blue(img2.pixels[pos]);
    hist[int((r+b+g)/3)] +=1;
    println(int((r+b+g)/3));
    img2.pixels[pos]  = color((r+b+g)/3);
    if ( ((r+b+g)/3)>200 && ((r+b+g)/3) <250 ) {  // When 'i' is less than 35...
      img4.pixels[pos]= color (0,200,0);
    }
    
  }
}





// Find the largest value in the histogram
int histMax = max(hist);

stroke(255);
// esta segmentacion y hotograma
// Draw half of the histogram (skip every second value)
for (int i = 0; i < img2.width; i += 2) {
  // Map i (from 0..img.width) to a location in the histogram (0..255)
  int which = int(map(i, 0, img2.width, 0, 255));
  //println(which);
  // Convert the histogram value to a location between 
  // the bottom and the top of the picture
  int y = int(map(hist[which], 0, histMax, img2.height, 0));
  line(i+220, img2.height+350, i+220, y+350);
  
}
  

float value = 25;
float m = map(value, 0, 100, 0, width);
//println(img2.height);
//println(hist);

///############      CONVOLUTION                      ######################################

  img2.loadPixels();
 
  PImage edgeImg = createImage(img2.width, img2.height, RGB);
 
  for (int y = 1; y < img2.height-1; y++) { // Skip top and bottom edges
    for (int x = 1; x < img2.width-1; x++) { // Skip left and right edges
      float sum = 0; // Kernel sum for this pixel
      for (int ky = -1; ky <= 1; ky++) {
        for (int kx = -1; kx <= 1; kx++) {
         
          int pos = (y + ky)*img2.width + (x + kx);
          
          float val = red(img2.pixels[pos]);
          
          sum += kernel[ky+1][kx+1] * val;
        }
      }
     
      edgeImg.pixels[y*img2.width + x] = color(sum, sum, sum);
    }
  }
  // State that there are changes to edgeImg.pixels[]
  edgeImg.updatePixels();
  
  img2.resize(0, 200);
  img3.resize(0, 200);
  img4.resize(0, 200);
  edgeImg.resize(0, 200);
  image(img2,0,0);
  image(img3,420,0);
  image(img4,840,0);
  //image(img4,600,0);
  image(edgeImg,840,250);
  
  //image(edgeImg, width/2, 0); // Draw the new image 
