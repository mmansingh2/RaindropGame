int count = 10; //ten raindrops on screen
PImage field; //declare PImage field
int t; //declare int t
ArrayList <Raindrop> raindrops = new ArrayList<Raindrop>(); //declare raindrop array list
Catcher c = new Catcher(mouseX,mouseY); //declare a new catcher called c


void settings(){
  size(400,300); //set size of canvas
}

void setup() {
  field = loadImage("rain3.png"); //initialize PImage field
  t = 0; //initialize int t
  textSize(100); //set text size to 100
  fill(255); //set text color to white
  text(t,width/2,280); //set text location
  c.display(mouseX,mouseY); //display catcher c at mouse

 for (int i = 0; i < count; i++) { //add raindrops under these conditions
  raindrops.add(new Raindrop(random(width),0)); //at a random width
}
}

void draw() {
  image(field,0,0); //set background every frame
  text(t,width/2,280); //set text every frame

 c.display(mouseX,mouseY); //display catcher c at mouse
 c.pos(); //set catcher's position every frame
 raindrops.add(new Raindrop(random(width),0)); //add raindrops
  for (int i = 0; i < count;  i++) { //do the following under these conditions
    Raindrop r = raindrops.get(i); //display raindrops
    r.display(); //display raindrops
    r.fall(); //make raindrops fall
    if (r.isInContactWith(c.lok)) //see if raindrop touches catcher
    { 
      t = t + 1; //if it does, increase t by 1
      r.reset(); //reset raindrop to top of screen
    } 
    if (r.loc.y > height) {     //check to see if the raindrop goes below the bottom of the screen
    r.reset();                           //reset the raindrop
    }
  }
  
  if (t >= 100) { //if t is 100 or more
    background(0); //set background to black
    int count = 0; //raindrops don't fall
  }
  

}
