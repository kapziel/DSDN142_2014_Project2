color mybackground[] =
{
  #000000, // black
  #FFFFFF, // white
  #FF0867 // pink
};

void setup() {
  size(400, 400);
  int bg = int(random(0, mybackground.length));
  background(mybackground[bg]);
  noStroke();

  if (bg==0) { // black
    fill(mybackground[1]);
    rect(80, 80, 300, 300);
    fill(mybackground[2]);
    rect(40, 40, 200, 200);
    fill(mybackground[2]);
    text("The Generatives", 250, 350);
  } else if (bg==1) { //white
    fill(mybackground[0]);
    rect(80, 80, 300, 300);
    fill(mybackground[2]);
    rect(40, 40, 200, 200);
    fill(mybackground[2]);
    text("The Generatives", 250, 350);
  } else { //pink
    fill(mybackground[0]);
    rect(80, 80, 300, 300);
    fill(mybackground[1]);
    rect(40, 40, 200, 200);
    fill(mybackground[1]);
    text("The Generatives", 250, 350);
  }
}

void draw() {
}
