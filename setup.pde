//mouse click count
int a = 0;
//count end
//int fade text
int fade = -10;
//int fade text end

Drop[] drops = new Drop[100];

void setup() {
  fullScreen();
  frameRate(144);
  
  for (int i = 0; i < drops.length; i++) {
    drops[i] = new Drop();
  }
}

void draw() {
  background(255,255,0);
  
  //titke
  fill(255,0,0);
  textSize(255);
  text("Let's Play!", 750,850);
  for (int i = 0; i < drops.length; i++) {
    drops[i].fall();
    drops[i].show();
  }
  //text click the screen
  textSize(100);
  text("Cick the screen to give presents:" + a,560,1000);
  //text lets party
  fill(255,0,255,fade);
  textSize(100);
  text("lets have a party",900,1200);
  
  
}
//mousePressed for count
void mousePressed() {
  fade = fade + +10;
  a += 1;
}
