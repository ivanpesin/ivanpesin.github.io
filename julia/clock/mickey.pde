
numFrames = 4;
PImage[] images = new PImage[numFrames];

int frame = 0;

void setup() {

  size(200, 200);

  stroke(255);
  frameRate(10);

  smooth();

  images[0]  = loadImage("frame_0_delay-0.08s.gif");
  images[1]  = loadImage("frame_1_delay-0.08s.gif"); 
  images[2]  = loadImage("frame_2_delay-0.08s.gif");
  images[3]  = loadImage("frame_3_delay-0.08s.gif"); 

   myFont = createFont("Helvetica", 20);
   textFont(myFont);
}

void draw() {

  background(255);
  fill(255);
  stroke(0);
  strokeWeight(3);

  frame = (frame+1)%numFrames;  // Use % to cycle through frames


  // Angles for sin() and cos() start at 3 o'clock;
  // subtract HALF_PI to make them start at the top

  ellipse(100, 100, 180, 180);
  image(images[frame], 70, 50);

/*  fill(50);
  textAlign(CENTER);
  text("12", 100, 35);
  text("6",  100, 180);
  text("3",  175, 100);
  text("9",   25, 100);*/


  stroke(150);
  strokeWeight(3);

  line(cos(0) * 73 + 100, sin(0) * 73 + 100, cos(0) * 80 + 100, sin(0) * 80 + 100);
  line(cos(HALF_PI) * 73 + 100, sin(HALF_PI) * 73 + 100, cos(HALF_PI) * 80 + 100, sin(HALF_PI) * 80 + 100);
  line(cos(PI) * 73 + 100, sin(PI) * 73 + 100, cos(PI) * 80 + 100, sin(PI) * 80 + 100);
  line(cos(PI + HALF_PI) * 73 + 100, sin(PI + HALF_PI) * 73 + 100, cos(PI + HALF_PI) * 80 + 100, sin(PI + HALF_PI) * 80 + 100);

  float s = map(second(), 0, 60, 0, TWO_PI) - HALF_PI;
  float m = map(minute(), 0, 60, 0, TWO_PI) - HALF_PI;
  float h = map(hour() % 12, 0, 12, 0, TWO_PI) - HALF_PI;

  stroke(204,102,0);
  strokeWeight(1);

  line(100, 100, cos(s) * 80 + 100, sin(s) * 80 + 100);

  triangle(cos(s) * 80 + 100, sin(s) * 80 + 100,
           cos(s+0.05) * 73 + 100, sin(s+0.05) * 73 + 100,
           cos(s-0.05) * 73 + 100, sin(s-0.05) * 73 + 100);

  stroke(50);
  strokeWeight(2);

  line(100, 100, cos(m) * 70 + 100, sin(m) * 70 + 100);

  strokeWeight(4);

  line(100, 100, cos(h) * 55 + 100, sin(h) * 55 + 100);

}
