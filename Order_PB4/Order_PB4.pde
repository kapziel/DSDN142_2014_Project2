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
  smooth(4);
  font = createFont("Helvetica", 1);
  fill(000);
  String st = 
    "©çƒ†™™™Ç›‹€⁄ﬁﬂ‡°··‚‡ﬂﬁﬁ";
  for (int x=0; x<width; x=x+160) {
    for (int y=0; y<=height; y=y+10) {
      fill(000);
      text(st, x, y);
      noLoop();
    }
  }
}
