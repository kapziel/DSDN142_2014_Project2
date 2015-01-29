/*

Code from: http://forum.processing.org/one/topic/random-text.html

*/

PFont f = createFont( "Arial", 24 );
void setup(){
  size(400,400);
  textFont(f);
  background(0);
}
void draw(){
  fill(random(255),random(255),random(255));
  text( "" + char( int( random(33,126) ) ), random(width), random(height) );
}
