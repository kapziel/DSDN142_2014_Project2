PImage b;
// A hashMap
HashMap hm = new HashMap();
//
void setup () {
  size (1200, 900);
  // Images must be in the "data" directory to load correctly
  b = loadImage("c.bmp");
  b.loadPixels();
  noLoop();
  // hashMap
  hm.put("000", "#");  // black
  hm.put("1281280", "*");
  hm.put("13513514", "c"); 
  hm.put("135135144", "d");   
  hm.put("12800", "e");   
  hm.put("200200144", "f");
  hm.put("204204204", "g");
  hm.put("128128128", "h");
  hm.put("192192192", "i");
  hm.put("192192", "j");
  hm.put("255255255", "."); // white
}
//
void draw () {
  image(b, 5, 5);
  int x= 125;
  int y= 9;
  String w;
  //
  for (int i = 0; i < b.width; i++) {
    for (int j = 0; j < b.height; j++) {   
      // The equivalent statement to "get(x, y)" using pixels[] is "pixels[y*width+x]".
      // pixels[i+halfImage] = pixels[i];
      color myColor= b.get(i, j);
      //
      String s =  str( int(red(myColor))   )   +    
        str( int(green(myColor))   )   +    
        str( int(blue(myColor))   )  ;
      // println ( s );
      // someTest(i, j);
      //
      // Is the word in the HashMap ?
      if (hm.containsKey(s)) {
        // We access objects from a HashMap via its key, the String
        w = (String) hm.get(s);
        /*
        Map.Entry me = (Map.Entry)i.next();
         print(me.getKey() + " is ");
         println(me.getValue());
         */
      }
      else
      {
        println (s + " not found (error58).");
        //w= "0";
        w= (str(int(s))).substring(3, 5);
      }
      text (w, x, y);
      y+=8; // next line
    }
    x+=8;  // next column
    y=9; // 1st line
  }
  // b.updatePixels();
}
//
// --------------------------------------------------
// not in use
// --------------------------------------------------
void someTest (int i, int j) {
  //print(red(b.get(i, j))+ " " );
  //print(green(b.get(i, j))+" ");
  //println(blue(b.get(i, j)));
  //
  switch (int(red(b.get(i, j)))) {
  case 0:
    break;
  case 128:
    break;
  case 192:
    break;
  case 255:
    break; 
  default :
    println("not found with red: " + int(red(b.get(i, j))));
  } // switch 1
  //
  switch (int(green(b.get(i, j)))) {
  case 0:
    break;
  case 128:
    break;
  case 192:
    break;
  case 255:
    break; 
  default :
    println("not found with green: " + int(green(b.get(i, j))));
  } // switch 2
  //
  switch (int(blue(b.get(i, j)))) {
  case 0:
    break;
  case 128:
    break;
  case 192:
    break;
  case 255:
    break; 
  default :
    println("not found with blue: " + int(blue(b.get(i, j))));
  } // switch 2
}
