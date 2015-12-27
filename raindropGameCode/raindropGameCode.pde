
int count = 50;
//PVector mouse;   //declare a PVector called mouse
Raindrop [] r = new Raindrop [count];      //declare a new Raindrop array called r
Catcher c;

void settings(){
  size(800,600); //set size of canvas
  
}

void setup() {
  background(0); //set background color to black
  c = new Catcher(mouseX,mouseY);
  c.display(mouseX,mouseY);

 // mouse = new PVector();
  for (int i = 0; i < count; i++) { //initialize raindrops
    r[i] = new Raindrop(random(width), 0);
  }
}

void draw() {
   c.display(mouseX,mouseY);
  c.pos();
  background(0); //continuous background
  //mouse.set(mouseX, mouseY); 
  for (int i = 0; i < count; i++) {
    r[i].display();
    r[i].fall();
    if (r[i].isInContactWith(c.lok))
    { 
      r[i].reset();
    } 
    if (r[i].loc.y > height) {     //check to see if the raindrop goes below the bottom of the screen
    r[i].reset();                           //reset the raindrop
    }
  }

}
