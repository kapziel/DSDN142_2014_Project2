/*
Doug Easterly
Intermediate Color lesson
DSDN142, 2014
Victoria University of Wellington

thanks to Joshua Davis' Anderson Ranch tutorials for how to work with % and floor to create a matrix with 1 for-loop
https://twitter.com/JoshuaDavis/status/295209341064212482

And Processing Handbook (Reas/Fry) for working with color palettes 
*/

float dotSize = 25.0;
float spacing = 1.6;
// room for our dots to breathe

float plantArea = dotSize*spacing;
int col;
int row;
int numDots;
// a border for the total composition
float border = plantArea/2;

void setup(){
size (800,200);
col = floor(width / plantArea);
row = floor(height / plantArea);
numDots = floor(col*row);
ellipseMode(CENTER);
}

void draw(){
  
for(int i = 0; i<numDots; i++){
  /* fill with a gray value using map. we are mapping i from floor(i/col) min and max values to 0-255
  What would you do to keep the relationship of ranges the same, but brighter?
   map(value, start1, stop1, start2, stop2)
   http://processing.org/reference/map_.html*/
  fill(map(i+1,plantArea *(floor(0/col)),plantArea *(floor(numDots/col)), 0, 255));
ellipse( (plantArea*(i%col)) + border, plantArea *(floor(i/col)) + border, dotSize, dotSize);
  println(floor(i/col));

}

noLoop();

}


