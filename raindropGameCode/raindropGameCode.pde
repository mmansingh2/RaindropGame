class Raindrop {
  float diam,v,a,x,y;
  Raindrop(float width, float height){
    diam = 60;
    v = random(1,5);
    a = random(1,3);
    
  }
  void display(){
    ellipse(x,y,diam,diam);
    
  }
  void fall(){
    y = v += a;
    
  }
  void isInContactWith(PVector mouse){
    mouse.x = diam/2;
    mouse.y = diam/2;
   
  }
  
  void reset(float width, float height){
   x = random(width);
   y = 0;
  }

  }

  








PVector mouse;   //declare a P
Raindrop r;      //declare a new Raindrop called r

// On your own, create an array of Raindrop objects instead of just one
// Use the array instead of the single object
// You can start out by just using the single Raindrop as you test


void setup() {
  size(600, 400);
  mouse = new PVector();                //initialize mouse PVector. value is irrelevant since it will be set at the start of void draw(){}
  r = new Raindrop(random(width),0);   //Initialize r. The parameters used are the initial x and y positions
}

void draw() {
  mouse.set(mouseX, mouseY);             //set value of mouse as mouseX,mouseY
  background(0, 200, 255);
  r.fall();         //make the raindrop fall. It should accelerate as if pulled towards the ground by earth's gravity
  r.display();      //display the raindrop

if (r.isInContactWith(mouse)) {      //check to see if the raindrop is in contact with the point represented by the PVector called mouse
r.reset();
}
}


//if it is, reset the raindrop
 // }
 // if (r.loc.y > height + r.diam/2) {     //check to see if the raindrop goes below the bottom of the screen
    //r.reset();                           //if it does, reset the raindrop