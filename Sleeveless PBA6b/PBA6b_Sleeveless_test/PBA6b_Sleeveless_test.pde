/*
Processing code by Simon Jarvis
 Example taken from https://blackboard.vuw.ac.nz/webapps/blackboard/execute/displayLearningUnit?course_id=_75115_1&content_id=_1544903_1
 example code written by Birgit Bachler, VUW Design School 2014
 example code for PDF library from https://blackboard.vuw.ac.nz/webapps/blackboard/execute/displayLearningUnit?course_id=_75115_1&content_id=_1543865_1
 Sample code from processing.org forums
 https://processing.org/discourse/beta/num_1199908556.html
 code designed to make 'eyes' follow mouse around the page
 */

import processing.pdf.*; //import pdf library

color shapeColor []=
{
  #735632, 
  #DAC8A1, 
  #ED8463, 
  #D71314
};

color canvasbg [] =
{
  #000000, //black background
  #FFFFFF // white background
};

int center = int(PI);
int tri1 = center+1*int(PI);
int tri2 = center+3*int(PI);
int tri3 = center+2*int(PI);

void setup() {
  size (600, 600); //canvas size, set
  rectMode(CENTER);
  ellipseMode(CENTER);
  colorMode(HSB);


  int bg = int(random(0, canvasbg.length)); 
  background(canvasbg[bg]);
  int ebg = int(random(0, canvasbg.length));
  int rbg = int(random(0, canvasbg.length));


  //start defining float variables for coordinates
  float rx = constrain(center, random(height), random(width));
  float ry = constrain(center, random(100), random(100));

  float tx = constrain(center, random(height), random(width));
  float ty = constrain(center, random(100), random(100));

  float ex = constrain(center, random(height), random(width));
  float ey = constrain(center, random(100), random(100));


  translate(height/2, width/2);

  stroke(200, 200, 200);
  
  //draw rect and color
  fill(canvasbg[rbg]);
  rect(rx, ry, height/2, width/2);

  //ellipse color and draw
  fill(canvasbg[ebg]);
  ellipse(ex, ey, 200, 200);

  //triangle color and draw
  noStroke();
  fill(random(height+width), 200, 200);
  triangle(tx, ty, ex, ey, rx, ry);
}

void draw() {  
  noLoop();
}

