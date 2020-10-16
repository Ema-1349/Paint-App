color white = #FFFFFF;
color selectedcolor = #000000;

boolean redOn;

PImage red;

void setup() {
  size(800,800);
  background(255);
  redOn = false;
  red = loadImage("red.jpg");
}

void draw(){
  button();
}

void mouseReleased(){
 if (mouseX > 200 && mouseX < 300 && mouseY > 200 && mouseY < 300) {
  redOn = !redOn;
 }
}


void mouseClicked(){
if (redOn == false) {
   strokeWeight(5);
   stroke(selectedcolor);
   line(pmouseX,pmouseY,mouseX,mouseY);
  }
  else {
   image(red,mouseX+10,mouseY+10,100,100);
   stroke(white);
   strokeWeight(0);
  }
}

void mouseDragged(){
  
  if (redOn == false) {
   strokeWeight(5);
   stroke(selectedcolor);
   line(pmouseX,pmouseY,mouseX,mouseY);
  }
  else {
   image(red,mouseX+10,mouseY+10,100,100);
   stroke(white);
   strokeWeight(0);
  }
}

void button(){
  fill(255,0,0);
  stroke(255,0,0);
  square(200,200,100); 
  
  image(red,225,225,50,50);
}
