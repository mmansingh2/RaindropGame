 class Raindrop {
  PVector loc, vel, a;
  float diam;

  Raindrop(float x, float y) {
    loc = new PVector(x, y);  
    vel = new PVector(.05, .06);
    a= new PVector(.2, .3);
    diam = 40;
  }

  void display() {
    fill(0,0,255);
    ellipse(loc.x, loc.y, diam, diam);
  }

  void fall() {
    loc.add(vel);
    vel.y+= a.y;
  }

  boolean isInContactWith(PVector lok) {
    if (loc.dist(lok)< diam/2) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    loc.x = random(width);
    loc.y = 0;
    vel.x = .05;
    vel.y= .05;
  }
}

class Catcher {
  PVector lok;
  float wid, hei;

  Catcher(float x, float y) {
   
    x = mouseX;
    y = mouseY;
    wid = 60;
    hei = 60;
    lok = new PVector(mouseX, mouseY);
  }

  void display(float x, float y) {
    fill(255);
    rect(x, y, wid, hei);
  }
  
  void pos(){
    lok.set(mouseX,mouseY);
    
  }
   
  }
