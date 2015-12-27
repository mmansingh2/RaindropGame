
int count = 50; //fifty raindrops on screen

Raindrop [] r = new Raindrop [count];      //declare a new Raindrop array called r
Catcher c = new Catcher(mouseX,mouseY); //declare a new catcher called c

void settings(){
  size(800,600); //set size of canvas
  
}

void setup() {
  background(0); //set background color to black
  c.display(mouseX,mouseY); //display catcher c at mouse

 // mouse = new PVector();
  for (int i = 0; i < count; i++) { //initialize raindrops
    r[i] = new Raindrop(random(width), 0);
  }
}

void draw() {

  c.pos(); //change catcher's position to mouse every frame
  background(0); //continuous background 
  for (int i = 0; i < count; i++) { //assign methods to raindrop array
    r[i].display();
    r[i].fall();
    if (r[i].isInContactWith(c.lok)) //see if raindrop touches catcher
    { 
      r[i].reset(); //reset raindrop to top of screen
    } 
    if (r[i].loc.y > height) {     //check to see if the raindrop goes below the bottom of the screen
    r[i].reset();                           //reset the raindrop
    }
  }

}
