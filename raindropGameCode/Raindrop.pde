class Raindrop {
  float diam;
  float a;
  PVector v;
  PVector loc;

  Raindrop(float x, float y) {
    loc = new PVector(x, y);
    v = new PVector(.05, .06);
    diam = 60;
    a = .2;
  }
  void display() {
    ellipse(loc.x, loc.y, diam, diam);
  }
  void fall() {
    loc.add(v); 
    v.y += a;
  }
 boolean isInContactWith(PVector mouse) {
   if (loc.dist(mouse) <= diam/2) {
    return true;
    } else { return false;
    }
 }
 
 void reset(){
   loc.x = random(width);
   loc.y = 0;
   
 }
}
}