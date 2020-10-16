//Emma Dong
//Block 1-1B
//Project #4: Paint App

//Hiya Mr. Pelletier! I dunno why I do these reflection thingys after finishing each project, but let me know if I should stop doing them... heh.
//Anyways, this project was *really* daunting when i first took a look at the project description. Putting together all the pieces of the 'puzzle' seemed hard, so at first i made a separate processing 
//file for various parts, then I put everything together. 
//Sometimes, like when I was trying to restrict the squiggle line to the canvas, my mind did not comprehend the examples in the Teams discussion, and instead wandered to a more confusing meathod...
//I wanted a soft, pastel color scheme for this project, and I'm pretty happy of the result. 
//There was one other confusing thing, but I understood it after examining my code a bit more. Since I made 4 stamps instead of 1, I had to make the restrictions include other stamps so that you cannot 
//have more than one stamp active at one time. So, now, if you click from the panda stamp to the pizza stamp without disabling the panda stamp first, it'll disable itself.
//Oh, also, the stamps get bigger and smaller according to the line size slider.
//Thats all i can think of to say for now, hope you enjoy the project! (Also, have you marked my Sketchbook Project yet?)




///          Stamp Variables          ///
boolean rainbowOn;
boolean pizzaOn;
boolean pandaOn;
boolean heartOn;

///          Line Drawn/Hidden Variable          ///
boolean linedraw;

///          Images and text font          ///
PFont milky;
PImage heart;
PImage panda;
PImage pizza;
PImage rainbow;

///          Color Buttons          ///
color pastelPurple  = #e6ccff;
color pastelPink    = #ffccf2;
color pastelBlue    = #b3e6ff;
color pastelOrange  = #ffe6b3;
color pastelYellow  = #ffffcc;
color pastelGreen   = #b3ffcc;
color white         = #ffffff;
color black         = #000000;

///          Selected color for squiggly line          ///
color linecolor;

///          Selected color for Stamps          ///
color stampstroke;
color red = #ff6666;

///          Squggly Line thickness variables         ///
float linethickness = 12;
float sliderY = 700;






void setup(){
  size(800,800);
  background(255);
  linecolor = black;
  milky = createFont("MilkyNice.ttf",25);
  stampstroke = 230;
  
  heart = loadImage("heart.png");
  pizza = loadImage("pizza.png");
  panda = loadImage("panda.png");
  rainbow = loadImage("rainbow.png");
  
  rainbowOn = false;
  pizzaOn = false; 
  pandaOn = false;
  heartOn = false;
  
  linedraw = false;
}



void draw(){
  fill(210);                        //Drawing Board Border
  stroke(200);
  strokeWeight(5);
  rect(0,0,25,750);
  rect(25,0,750,25);
  rect(775,0,25,750);
  
  fill(210);                        //Bottom Tool Pallette
  strokeWeight(5);
  stroke(200);
  rect(-10,600,820,200);
  
  black(50,655);                    //Color Buttons
  white(50,745);
  purple(130,655);
  pink(130,745);
  Green(210,745);
  Blue(210,655);
  yellow(290,745);
  orange(290,655); 
  
  strokeWeight(3);                  //Slider
  tactile2(375,sliderY,15);
  line(375,620,375,780);
  
  strokeWeight(3);
  circle(375,sliderY,30);
  
  stroke(linecolor);                //Slider indicator
  fill(linecolor);
  strokeWeight(1);
  strokeWeight(linethickness);
  line(425,620,425,780);
  
  newbutton(690,615);
  fillbutton(690,660);
  savebutton(690,705);
  loadbutton(690,750);
  
  stampbackground();
  
  heartimg();
  pandaimg();
  pizzaimg();
  rainbowimg();
}



void mouseDragged(){
///          Drawing the line          ///
if (linedraw == true && rainbowOn == false && pandaOn == false && pizzaOn == false && heartOn == false) {
  stroke(linecolor);
  fill(linecolor);
  strokeWeight(linethickness);
  line(pmouseX,pmouseY,mouseX,mouseY);
}
///          Slider          ///
   slider();
   
///          Drawing various stamps          ///
  stamps();

///          Line Drawing Continued          ///
if (linedraw == false) {
  noStroke(); 
  noFill(); 
  line(pmouseX,pmouseY,mouseX,mouseY);
}
if (mouseX > 25 && mouseX < 775 && mouseY > 25 && mouseY < 600) {
  linedraw = true; }
  else {linedraw = false;}
}



void mouseClicked(){
 stamps();
 
 if (linedraw == true && rainbowOn == false && pandaOn == false && pizzaOn == false && heartOn == false) {
  stroke(linecolor);
  fill(linecolor);
  strokeWeight(linethickness);
  line(pmouseX,pmouseY,mouseX,mouseY);
  
  if (mouseX > 25 && mouseX < 775 && mouseY > 25 && mouseY < 600) {
  linedraw = true; }
  else {linedraw = false;}
}
}



void stamps(){
  if (rainbowOn == true && mouseX > 25 && mouseX < 775 && mouseY > 25 && mouseY < 600 ) {
 image(rainbow,mouseX-80,mouseY-80,2*linethickness+150,2*linethickness+150);
}
if (pandaOn == true && mouseX > 25 && mouseX < 775 && mouseY > 25 && mouseY < 600) {
  image(panda,mouseX-80,mouseY-80,2*linethickness+150,2*linethickness+150);
}
if (pizzaOn == true && mouseX > 25 && mouseX < 775 && mouseY > 25 && mouseY < 600) {
  image(pizza,mouseX-80,mouseY-80,2*linethickness+150,2*linethickness+150);
}
if (heartOn == true && mouseX > 25 && mouseX < 775 && mouseY > 25 && mouseY < 600) {
  image(heart,mouseX-80,mouseY-80,2*linethickness+150,2*linethickness+150);
}
}



void mouseReleased(){
///          Slider          ///
  slider(); 
  
///          Color Selected          ///  
  if (dist(130,655,mouseX,mouseY) < 35){linecolor = pastelPurple;}
  if (dist(130,745,mouseX,mouseY) < 35){linecolor = pastelPink;}
  if (dist(210,655,mouseX,mouseY) < 35){linecolor = pastelBlue;}
  if (dist(210,745,mouseX,mouseY) < 35){linecolor = pastelGreen;}
  if (dist(290,655,mouseX,mouseY) < 35){linecolor = pastelOrange;}
  if (dist(290,745,mouseX,mouseY) < 35){linecolor = pastelYellow;}
  if (dist(50,745,mouseX,mouseY) < 35){linecolor = white;}
  if (dist(50,655,mouseX,mouseY) < 35){linecolor = black;}
   
///          Clear Button          ///
  if (mouseX > 690 && mouseX < 770 && mouseY > 625 && mouseY < 665)
    {fill(255); stroke(255); rect(29,29,742,567);}
    
///          Fill Button          ///
  if (mouseX > 690 && mouseX < 690+80 && mouseY > 660 && mouseY < 660+40) 
    {fill(linecolor); stroke(linecolor); rect(29,29,742,567);}   
    
///          Heart Stamp          ///
  if (mouseX > 460 && mouseX < 460+100 && mouseY > 620 && mouseY < 620+80)
  {heartOn = !heartOn; pizzaOn = false; pandaOn = false; rainbowOn = false;}
///          Pizza Stamp          ///
  if (mouseX > 460 && mouseX < 460+100 && mouseY > 700 && mouseY < 700+80)
  {pizzaOn = !pizzaOn; heartOn = false; pandaOn = false; rainbowOn = false;}
///          Panda Stamp          ///
  if (mouseX > 560 && mouseX < 560+100 && mouseY > 620 && mouseY < 620+80)
  {pandaOn = !pandaOn; heartOn = false; pizzaOn = false; rainbowOn = false;}
///          Rainbow Stamp          ///
  if (mouseX > 560 && mouseX < 560+100 && mouseY > 700 && mouseY < 700+80)
  {rainbowOn = !rainbowOn; heartOn = false; pizzaOn = false; pandaOn = false;}
  
///          Save Button          ///
  if (mouseX > 690 && mouseX < 770 && mouseY > 705 && mouseY < 745)
  {selectOutput("Image file name", "savedimage");}
///          Load Button          ///
  if(mouseX > 690 && mouseX < 770 && mouseY > 750 && mouseY < 790)
  {selectInput("Image file name", "openimage");}
}



///          Load Button Function          ///
void openimage(File f){
 if (f !=null) {
  //KLUDGE
  int n = 0;
  while (n < 100) {
    PImage pic = loadImage(f.getPath());
    image(pic, 29, 29);
    n = n + 1;
  }
 }
}


 
///          Save Button Function          ///
void savedimage(File f){
  if (f != null) 
  {PImage canvas = get(29,29,width-56,height-231);
canvas.save(f.getAbsolutePath());}
}



///          Slider Controls          ///
void slider(){
  if (mouseY > 620 && mouseY < 780 && mouseX > 360 && mouseX < 390) 
    {sliderY = mouseY;}
    
  linethickness = map(sliderY,620,780,2,22);
}



//===========================================================COLOR BUTTONS=============================================================
///          Tactile Color Buttons          ///
void purple(int x, int y){
  fill(pastelPurple);
  strokeWeight(4);
  tactile(130,655,35);
  circle(x,y,70); 
}

void pink(int x, int y){
  fill(pastelPink);
  strokeWeight(4);
  tactile(130,745,35);
  circle(x,y,70); 
}

void Blue(int x, int y){
  fill(pastelBlue);
  strokeWeight(4);
  tactile(210,655,35);
  circle(x,y,70); 
}

void Green(int x, int y){
  fill(pastelGreen);
  strokeWeight(4);
  tactile(210,745,35);
  circle(x,y,70); 
}

void orange(int x, int y){
  fill(pastelOrange);
  strokeWeight(4);
  tactile(290,655,35);
  circle(x,y,70); 
}

void yellow(int x, int y){
  fill(pastelYellow);
  strokeWeight(4);
  tactile(290,745,35);
  circle(x,y,70); 
}

void white(int x, int y){
  fill(white);
  strokeWeight(4);
  tactile(50,745,35);
  circle(x,y,70); 
}

void black(int x, int y){
  fill(black);
  strokeWeight(4);
  tactile(50,655,36);
  circle(x,y,70); 
}



//=================================================================BUTTONS=================================================================
///         New Button          ///
void newbutton(int x, int y){
  tactile3(615);
  rect(x,y,80,40); 
  
  textSize(25);
  textAlign(CENTER,CENTER);
  fill(255);
  textFont(milky);
  text("New",731,632);
}



///          Fill Button          ///
void fillbutton(int x, int y){
  tactile3(660);
  rect(x,y,80,40);  
  
  textSize(25);
  textAlign(CENTER,CENTER);
  fill(255);
  textFont(milky);
  text("Fill",730,677);
}



///          Save Button          ///
void savebutton(int x, int y){
  tactile3(705);
  rect(x,y,80,40);  
  
  textSize(25);
  textAlign(CENTER,CENTER);
  fill(255);
  textFont(milky);
  text("Save",730,722);
}



///          Load Button          ///
void loadbutton(int x, int y){
  tactile3(750);
  rect(x,y,80,40);  
  
  textSize(25);
  textAlign(CENTER,CENTER);
  fill(255);
  textFont(milky);
  text("Load",730,767);
}



//==============================================================STAMPS============================================================================
///          Rectangle behind all stamps          ///
void stampbackground(){
  fill(240);
  stroke(230);
  rect(455,615,208,168);
}


///          Heart Stamp          ///
void heartimg(){   
  tactile4(457,617);
  hearttoggle();
  rect(457,617,100,80);
  image(heart,427,602,150,120);
}


///          Panda Stamp          ///
void pandaimg(){
  tactile4(560,617);
  pandatoggle();
  rect(560,617,100,80);
  image(panda,565,622,90,70);
}


///          Pizza Stamp          ///
void pizzaimg(){
  tactile4(457,700);
  pizzatoggle();
  rect(457,700,100,80);
  image(pizza,457,705,95,75);
}


///          Rainbow Stamp          ///
void rainbowimg(){
  tactile4(560,700);
  rainbowtoggle();
  rect(560,700,100,80);
  image(rainbow,565,705,90,70);
}



//====================================================================STAMP TOGGLE=========================================================================
void hearttoggle(){
 if (heartOn == true) {stroke(red);}
 else{stroke(230);}
}



void pandatoggle(){
 if (pandaOn == true) {stroke(red);}
 else{stroke(230);}
}



void pizzatoggle(){
 if (pizzaOn == true) {stroke(red);}
 else{stroke(230);}
}


void rainbowtoggle(){
  if (rainbowOn == true) {stroke(red);}
  else{stroke(230);}
}



//========================================================================TACTILE BUTTONS====================================================================
///          Tactile for Stamp Buttons          ///
void tactile4(int x, int y){  
  if (mouseX > x && mouseX < x+100 && mouseY > y && mouseY < y+80)
  {fill(255); strokeWeight(5);}
  else{fill(245); strokeWeight(3);}
}



///          Tactile for Rectangular Buttons          ///
void tactile3(int y){
  if (mouseX > 690 && mouseX < 690+80 && mouseY > y && mouseY < y+40) 
    {stroke(230); strokeWeight(5); fill(210);}
    else{stroke(180); strokeWeight(3); fill(190);}
}



///          Tactile for Slider          ///
void tactile2(float x, float y, float r){
  if (dist(x,y,mouseX,mouseY) < r){stroke(white); fill(200);}
  else {stroke(230); fill(190);}
}



///          Color Tactile Controls          ///
void tactile(int x, int y, int r){
  if (dist(x,y,mouseX,mouseY) < r){stroke(white);}
  else {stroke(180);}
}
