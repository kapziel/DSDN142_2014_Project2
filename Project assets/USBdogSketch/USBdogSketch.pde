/* 
Colorful USB-dogs on a grid
SVG demo sketch for DSDN142 summer course 2014
Birgit Bachler
*/

PShape USBdog; // svg

PShape outline; // black outline of drawing
PShape fills; // layer with all color fills
PShape body, feet, head; // all separate sub layers of fills

int grid = 40;

void setup() {
  smooth();
  noLoop();
  size(400, 400);
  USBdog = loadShape("USBdog.svg"); // file must be in the data sub-folder of your Processing sketch folder
  outline = USBdog.getChild("Outline"); // loads the outline layer as PShape

  fills = USBdog.getChild("Color-Fills"); // loads the color-fill layer as PShape

  body = fills.getChild("Body"); // loads the sub-layer Body of color-fill layer as separate PShape
  head = fills.getChild("Head");

  body.disableStyle(); // disable the style of the body fill layer
}

void draw() {
  background(255); // draw a white background
  for (int x=0; x<=width; x+=grid) {
    for (int y=0; y<height; y+=grid) { 
      fill(random(255), random(255), random(255)); // generate random color for body (ONLY FOR DEMONSTRATION)
      pushMatrix();
      translate(x,y); // place the shape on the position x,y
      shape(body, 0, 0, grid, grid); // draw the body (fill only applies to body)
      shape(head, 0, 0, grid, grid); // draw the head fill as in original SVG
      shape(outline, 0, 0, grid, grid); // draw the outline in the style of the original SVG
      popMatrix();
    }
  }
}

