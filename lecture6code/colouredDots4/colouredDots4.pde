/*
Doug Easterly
Intermediate Color lesson
DSDN142, 2014
Victoria University of Wellington

thanks to Joshua Davis' Anderson Ranch tutorials for how to work with % and floor to create a matrix with 1 for-loop
https://twitter.com/JoshuaDavis/status/295209341064212482

And Processing Handbook (Reas/Fry) for working with color palettes 
*/

// you can make a color palette manually, or you can use a tool like Joshua Davis' ColorPiocking Tool
color[] palette = {#7d5649, #a5385d, #795d5d, #b3366c, #7c6056,
#ad4262, #7c6255, #836156, #945b4a, #c91d73, #c13274, #b14a5c,
#9e5b45, #826a61, #6b7268, #a36454, #83746c, #a46952, #a46d48,
#977451, #b4794c, #969099, #b69180, #83a7ae, #86aab1, #aaa79d,
#baa783, #aaadae, #bcaab9, #bbb8b1, #eecad5, #f3dbe8};



float dotSize = 25.0;
float spacing = 1.6;
float plantArea = dotSize*spacing;
int col;
int row;
int numDots;
float border = plantArea/2;

void setup(){
size (800,200);
col = floor(width / plantArea);
row = floor(height / plantArea);
numDots = floor(col*row);
ellipseMode(CENTER);
}

void draw(){
  
/* one way to ramp through an array is simply to iterate
but what if our array is a different size than our for loop?
*/
//int j = i;
//if(i>palette.length){
//j= i-palette.length;
//}
//println(j);

/* once more, modulo % to the rescue*/
//  println(palette.length);
 // println(i%palette.length);

  
for(int i = 0; i<numDots; i++){
  // using the modulo (%) operator to make i work with vulues that make sense to our palette
fill(palette[i%palette.length]);
// using floor to keep i/col values within a row
// using modulo(%) to step through our columns
ellipse( (plantArea*(i%col)) + border, plantArea *(floor(i/col)) + border, dotSize, dotSize);

}

noLoop();

}


