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
  /* how can we generate a matrix using only 1 for-loop?
  modulo operator - %
  math floor function
  */
  
for(int i = 0; i<numDots; i++){
  /* ellipse(x, y, width, height);
   or in a matrix/table, ellipse(column, row, width, height);
   */
ellipse( (plantArea*(i%col)) + border, plantArea *(floor(i/col)) + border, dotSize, dotSize);
  
  //println(floor(i/col));
  println(i%col);
  
}

noLoop();

}


