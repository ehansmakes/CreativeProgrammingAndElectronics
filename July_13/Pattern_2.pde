void setup() {
  size(800, 800); //Canvas size
  background(0);  //Background Color
  noLoop();
}

void draw() {
  // Creates color gradient from black to purple
  for (int j=0; j<9; j++) {
    for (int i=0; i<9; i++) {
    
      noStroke();
      int x = i*100;
      int y = j*100;
      fill(75, 35, 189,y/4); // fills spaces based on y position, transparency creates the gradient
      rect(x, y-100, 100, 100);
    }

    // Creates arrow pattern
    for (float i=0; i<10; i++) {
      float x2=0;
      x2=x2+80*i;
      for (float k=0; k<10; k++) {
        float y2=0;
        y2=y2+100*k;

        noStroke();
        fill(255);
        triangle(x2, y2, x2+80, y2, x2+40, y2+40);
        rect(x2+20, y2+40, 40, 60);
      }
    }
  }
}

void keyPressed() { 
  if (keyCode == ENTER) { 
    saveFrame("autostart_p2_1.tif");  /takes screenshot of canvas
  }
}
