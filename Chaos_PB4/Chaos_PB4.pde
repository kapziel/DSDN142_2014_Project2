/*

 Proceesing code by Simon jarvis
 DSDN142, VUW School of design 2014
 code referenced from http://issuu.com/jpagecorrigan/docs/type-code_yeohyun-ahn/28
 code samples by Yeohyun Ahn & Viviana Cordova
 
 */

PFont font;
int cy, cx;
int randomletter;

void setup() {
  size(600, 600);
  background(255);
  colorMode(RGB);
  cx = width/2;
  cy= height/2;
}

void draw() {
  smooth(10);
  PFont font;
  randomletter = int(random(23));
  font = createFont("Helvetica", random(72));
  fill(000);
  String st = 
    "©çƒ†™™™Ç›‹€⁄ﬁﬂ‡°··‚‡ﬂﬁﬁ";
  for (int i=0; i<90; i++) {
    fill(000);
    textFont(font, random(72));
    text(st.charAt(randomletter), random(i*50), random(i*50));
//    noLoop();
  }
  textFont(font, 100);
  fill(#FF0303);
  text("1917", height/2, width/2);
  textFont(font, displayHeight);
//  translate(width/2, height/2);
  rotate(randomletter);
  translate(width/400, height/400);
  fill(000);
  text("T", cx, cy);
}

