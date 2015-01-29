/*

 Processing Code by Simon Jarvis
 VUW School of Design, DSDN142, 2014
 Reference material provided by:
 Birgit Bachler
 processing.org
 help with color arrays found here: http://forum.processing.org/two/discussion/3489/how-to-create-an-array-of-pre-defined-colors/p1
 fonts taken from google fonts: http://www.google.com/fonts
 Ayn Rand quote from: https://www.brainyquote.com/quotes/authors/a/ayn_rand.html
 PDF rference: https://processing.org/reference/libraries/pdf/
 Discussion around alpha channels using PShape: 
 http://forum.processing.org/two/discussion/3656/changing-alpha-of-an-svg-file-loaded-into-pshape-can-it-be-done/p1
 force uppercase; https://www.processing.org/reference/String_toUpperCase_.html
 
 
 Ayn Rand (uuugghhh):
 Achievement of your happiness is the only moral
 purpose of your life, and that happiness, not pain 
 or mindless self-indulgence, is the proof of your 
 moral integrity, since it is the proof and the result 
 of your loyalty to the achievement of your values.
 
 
 
 */

//color array
color c1 = #F0E3B9;
color c2 = #DAC8A1;
color c3 = #735632;
color c4 = #ED8463;
color c5 = #D71314;
color c6 = #FFFFFF;

color[] colors = {
  c1, c2, c3, c4, c5, c6
};

import processing.pdf.*;

PShape p;
PShape perspective;
PImage texture;
PFont russo;
PFont arial; //stand in for testing purposes
PShape norse;
PShape pertop, perbot, perbase;

//time intergers for appending PDF files
int s = second();
int m = minute();
int h = hour();
String time = str(h)+ "_" + str(m)+ "_" +str(s);

float tx1, ty1, tx2, ty2, tx3, ty3 = 10;

int center = height/2;



void setup() {
  //determine size and renderer
  //  size(displayWidth, displayHeight);
  size(1000, 1000);
  smooth(4);
  texture = loadImage("texture.JPG");
  norse = loadShape("");
  perspective = loadShape("perspective.svg");
  pertop = perspective.getChild("top");
  perbot = perspective.getChild("bottom");
  perbase = perspective.getChild("base");
}

void draw() {

  //being PDF recording
  beginRecord(PDF, "Simon Jarvis project 2_" + time + ".pdf");


  //load font into sketch
  russo = createFont("RussoOne-Regular.ttf", 48);
  arial = createFont("Arial-Black-48.vlw", 30);
  noStroke();
  smooth();
  //load image as a background, have to do it this way because PDF does
  //not support background()
  texture.filter(GRAY);
  texture.filter(THRESHOLD, 0.49);
  texture.resize(width, height);
  image(texture, 0, 0);


  //load text file
  String[] write = loadStrings("writing.txt");
  println("testing the write file: " + write[18]);


  //add the spots to the background
  int ranum = int(random(1, 3));
  if (ranum%2 == 0) {
    for (int x=0; x<=width; x+=10) {
      for (int y=0; y<=height; y+=10) {
        fill(c2, 30);
        stroke(c1, 10);
        rect(x, y, 5, 5);
      }
    }
  } else {
    for (int x=0; x<=width; x+=10) {
      for (int y=0; y<=height; y+=10) {
        fill(c2, 30);
        stroke(c1, 10);
        ellipse(x, y, 5, 5);
      }
    }
  }


  //large letter (red) using matrix stack alterations to isolate translation
  pushMatrix();
  fill(c5);
  textFont(russo, height);
  translate(-100, -100);
  String begin = write[int(random(1, 18)+1)];
  //force letters to be uppercase
  begin = begin.toUpperCase();
  char m = begin.charAt(1);
  text(m, width/2, height);
  popMatrix();


  //implement shapes - bridge formation
  perbot.disableStyle();
  pertop.disableStyle();
  perbase.disableStyle();
  fill(c3);
  shape(perbot, 0, 100, height, width);
  fill(c1);
  shape(pertop, 0, 100, height, width);
  noFill();
  shape(perbase, 0, 100, height, width);

  //actual text and placement/arrangement/color

  //top text
  String phrase = write[int(random(0, 18)+1)];
  int rectal = phrase.length();
  fill(c2);
  rect(50, 50, rectal*35, 50);
  textFont(russo, 50);
  fill(c6);
  text(phrase, 50, 100);

  //middle text
  phrase = write[int(random(0, 18)+1)];
  rectal = phrase.length();
  fill(c2);
  rect(50, 150, rectal*35, 50);
  fill(c6);
  textFont(russo, 50);
  text(phrase, 50, 200);
  fill(c5);



  //bottom text
  phrase = write[int(random(0, 18)+1)];
  rectal = phrase.length();
  fill(c2);
  rect(50, 250, rectal*35, 50);
  fill(c6);
  textFont(russo, 50);
  text(phrase, 50, 300);


  //title of the album..
  pushMatrix();
  fill(c1);
  textFont(russo, 70);
  //  text("Ayn's fool - Get It Done", width/2, height-(height*0.2));
  //  textAlign(CENTER, CENTER);
  text("Our Capital", width/2+10, height/2+100);
  rotate(-.5);
  translate(-750, -150);
  text("Ayn's Fool:", width/2-30, height-90); 
  popMatrix();


  noLoop();

  //stop recording PDF
  endRecord();
}


/*
Hopefully my distaste for Ayn Rand comes through, the composition is 
 made up of a quote from her, and arranged in a fashion
 that makes is meaningless, much like whe say -
 completely confusing and against the people.
 
 Fitting that this project has a political motivation
 seeing as this is what fueled the fire of Lissitzky and so many
 other 1920s constructivist artists and designers.
 */
