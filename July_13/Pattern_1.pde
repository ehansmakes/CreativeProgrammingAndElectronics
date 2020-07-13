void setup() {
  size(800, 800);  // Canvas Size
  background(0);   // Background Color
  noLoop();
}

void draw() {
  // Creates color gradient 
  for (int j=0; j<9; j++) {
    for (int i=0; i<9; i++) {
      // check odd or even number
      if (j ==0) {
        // color for first row
        fill(40, 11, 123);
      } else if (j == 1) {
        // color for second row 
        fill(75, 35, 189);
      } else if (j ==2) {
        // color for third row
        fill(100, 27, 128);
      } else if (j ==3) {
        // color for forth row
        fill(142, 49, 112);
      } else if (j ==4) {
        // color for fifth row
        fill(165, 58, 90);
      } else if (j ==5) {
        // color for sixth row
        fill(207,63,51);
      } else if (j ==6) {
        // color for seventh row
        fill(195, 86, 42);
      } else if (j ==7) {
        // color for eighth row
        fill(244, 150, 52);
      } else if (j ==8) {
        // color for ninth row
        fill(234, 194, 82);
      }

      // Add vertical lines 
      noStroke();
      int x = i*100;
      int y = j*100;

      rect(x, y-50, 100, 100);
    }
    stroke(0);
    strokeWeight(2);
    int x1=0;
    while (x1 <800) {
      line (x1, 0, x1, 800);
      x1 = x1 + 5;
    }

    // Creates triangle pattern
    for (float i1=0; i1<8; i1++) {
      float x2=50;
      x2=x2+x2*i1*2;
      for (float j1=0; j1<8; j1++) {
        float y2=50;
        y2=y2+y2*j1*2;

        noStroke();
        fill(0);
        quad(x2-50, y2, x2, y2-50, x2+50, y2, x2, y2+50);
        fill(255);
        quad(x2-25, y2-25, x2+25, y2-25, x2+25, y2+25, x2-25, y2+25);
        fill(0);
        quad(x2-25, y2, x2, y2-25, x2+25, y2, x2, y2+25);
      }
    }
  }
}

void keyPressed() { 
  if (keyCode == ENTER) { 
    saveFrame("autostart_p2_1.tif"); // Takes Screenshot of canvas
  }
}
