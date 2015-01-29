/*
Simon Jarvis, VUW design school 2014 -- DSDN142
Sample code from processing.org forums
https://processing.org/discourse/beta/num_1199908556.html
code designed to make 'eyes' follow mouse around the page

*/

//PImage bg;
int a; 
float mx;
float my;
float easing = 0.05;
float esize = 4.5;
int box = 10;
int bg;


void setup() 
{
 size(351,337);
 bg = (#FFFFFF);
 noStroke(); 
 smooth();
 ellipseMode(CENTER);  
}

 void draw() {
  
  background(bg);
  if(abs(mouseX - mx) > 0.1) {
    mx = mx + (mouseX - mx) * easing;
  }
  if(abs(mouseY - my) > 0.1) {
    my = my + (mouseY- my) * easing;
  }
  
  float distance = esize * 2;
  
  float mx1 = constrain(mx, 120, 155); // eye 1
  float my1 = constrain(my, 89, 115);  // eye 1
  float mx2 = constrain(mx, 220, 255); // eye 2
  float my2 = constrain(my, 89, 115);  // eye 2
  
  fill(0);
  ellipse(mx1, my1, esize, esize);
  ellipse(mx2, my2, esize, esize);
  
} 
