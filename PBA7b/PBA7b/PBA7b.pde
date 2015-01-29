/*

 Processing code by Simon Jarvis
 reference material from Birgit Bachler, VUW Design School 2014
 https://vstream.victoria.ac.nz/ess/echo/presentation/b6ca58f1-9475-451e-b78b-8c32a81cfcfc?ec=true
 help with color arrays found here: http://forum.processing.org/two/discussion/3489/how-to-create-an-array-of-pre-defined-colors/p1
 */

//color array
color c1 = #F0E3B9;
color c2 = #DAC8A1;
color c3 = #735632;
color c4 = #ED8463;
color c5 = #D71314;

color[] colors = {
  c1, c2, c3, c4, c5
};

PShape p;
PShape spires, center;

void setup() {
  size(800, 800);
  smooth();
  p=loadShape("design.svg");
  shapeMode(CENTER);
  background(255);
  spires = p.getChild("spires");
  center = p.getChild("center");
  p.disableStyle();
}

void draw() {
  for (int x=0; x<=width; x+=50) {
    for (int y=0; y<=height; y+=50) {
      int paint = int(random(0, 3)+1);
      fill(colors[paint]);
      shape(center, x, y, 100, 100);
      shape(spires, x, y, 100, 100);
    }
  }
  
  fill(c5);
  stroke(c4);
  shape(p, height/2, height/2, 600, 600);


  //  shape(center, random(width), random(height), 100, 100);
  //  shape(spires, random(height/2, height), random(width/2, width), 100, 100);

  noLoop();
}

