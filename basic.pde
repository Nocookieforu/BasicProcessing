float theta;
color bl, gr;

void setup() {
  size(500,500);
  background(230);
  colorMode(HSB);
  noStroke();
  
  bl = color(155,155,128);
  gr = color(110,155,128);
  theta = 0.0;
}

void draw() {
  translate(width/2,height/2);
  background(230);
  
  theta = (theta + PI/128) % TWO_PI;
  /*
  theta += PI/32;
  saveFrame("images/f###.gif");
  if (theta > TWO_PI) {
    exit();
  }
  */
}

void keyPressed() {
  if (key == 's') {
    String timestamp = year() + nf(month(),2) + nf(day(),2) 
      + "-"  + nf(hour(),2) + "h" + nf(minute(),2) 
      + "m" + nf(second(),2) + "s";
    save(timestamp + ".jpg");
    println("saved");
  }else if (key == 'r') {
    
  }
}
