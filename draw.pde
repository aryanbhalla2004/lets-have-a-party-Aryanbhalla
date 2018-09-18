class Drop {
  // ellipse int
  float x;
  float y;
  //ellipse int end
  float z;
  // rect int 
  float w;
  float h;
  // rect int end
  //line int
  float i;
  float l;
  // ine end
  float len;
  float yspeed;

  Drop() {
    //ellipse
    x  = random(width);
    y  = random(-500, -50);
    //rect
    w  = random(width);
    h  = random(-500, -50);
    //line
    i  = random(width);
    l  = random(-500, -50);
    // line end
    z  = random(0, 20);
    len = map(z, 0, 20, 10, 20);
    yspeed  = map(z, 0, 20, 1, 20);
  }

  void fall() {
    //ellipse y
    y = y + yspeed;
    //rect h
    h= h + yspeed;
    //line l
    l= l + yspeed;
    float grav = map(z, 0, 20, 0, 0.2);
    yspeed = yspeed + grav;

    if (y > height) {
      //randome ellipse y 
      y = random(-200, -100);
      //random rect h
      h = random(-200, -100);
      //random line l
      l = random(-200, -100);
      //y speed for all shapes
      yspeed = map(z, 0, 20, 4, 10);
    }
  }

  void show() {
    float thick = map(z, 0, 20, 1, 3);
    strokeWeight(thick);
    //ellipse animation
    fill(255,0,0);
    stroke(255, 255, 0);
    ellipse(x, y, 20, 20);
    //rect animation
    fill(14,255,3);
    rect(w, h, 20, 20);
    //line animation
    strokeWeight(10);
    stroke(138, 43, 226);
    line(i, l, i , l+len);
     }
}
