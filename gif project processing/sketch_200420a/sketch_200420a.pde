ArrayList<PImage> gif;
 int i;
 int n = 0;

void setup() {
  size(700,400);
  gif =  new ArrayList<PImage>();
  int i = 0;

  while (i < 15 ) {
    String zero = "";
    if (i < 10) zero = "0";
    gif.add(loadImage("frame_"+ zero + i + "_delay-0.13s.gif"));
    i++;
  }
  
  frameRate(10);
  
}

void draw() {
  PImage frame = gif.get(n);
  image(frame, 0, 0, width, height);
  n++;
  if (n > 14) n= 0;
}
