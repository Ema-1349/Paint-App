//Clickable Color Buttons that are Tactile

color pastelPurple  = #e6ccff;
color pastelPink    = #ffccf2;
color pastelBlue    = #b3e6ff;
color pastelOrange  = #ffe6b3;
color pastelYellow  = #ffffcc;
color pastelGreen   = #b3ffcc;
color white         = #ffffff;
color black         = #000000;

void setup(){
  size(800,800);
}

void draw(){
  background(210);
  
  fill(255);
  stroke(200);
  rect(25,25,750,750);
  
  fill(210);
  strokeWeight(5);
  stroke(200);
  rect(-10,600,820,200);
  
  black(50,655);             //Button Colors
  white(50,745);
  purple(130,655);
  pink(130,745);
  Green(210,745);
  Blue(210,655);
  yellow(290,745);
  orange(290,655);
  
  if (dist(50,745,mouseX,mouseY) < 35){stroke(white);}
  else{stroke(white);}
  
}



void purple(int x, int y){
  fill(pastelPurple);
  strokeWeight(3);
  if (dist(130,655,mouseX,mouseY) < 35){stroke(white);}
  else{stroke(150);}
  circle(x,y,70); 
}

void pink(int x, int y){
  fill(pastelPink);
  strokeWeight(3);
  if (dist(130,745,mouseX,mouseY) < 35){stroke(white);}
  else{stroke(150);}
  circle(x,y,70); 
}

void Blue(int x, int y){
  fill(pastelBlue);
  strokeWeight(3);
  if (dist(210,655,mouseX,mouseY) < 35){stroke(white);}
  else{stroke(150);}
  circle(x,y,70); 
}

void Green(int x, int y){
  fill(pastelGreen);
  strokeWeight(3);
  if (dist(210,745,mouseX,mouseY) < 35){stroke(white);}
  else{stroke(150);}
  circle(x,y,70); 
}

void orange(int x, int y){
  fill(pastelOrange);
  strokeWeight(3);
  if (dist(290,655,mouseX,mouseY) < 35){stroke(white);}
  else{stroke(150);}
  circle(x,y,70); 
}

void yellow(int x, int y){
  fill(pastelYellow);
  strokeWeight(3);
  if (dist(290,745,mouseX,mouseY) < 35){stroke(white);}
  else{stroke(150);}
  circle(x,y,70); 
}

void white(int x, int y){
  fill(white);
  strokeWeight(3);
  if (dist(50,745,mouseX,mouseY) < 35){stroke(white);}
  else{stroke(150);}
  circle(x,y,70); 
}

void black(int x, int y){
  fill(black);
  strokeWeight(3);
  if (dist(50,655,mouseX,mouseY) < 35){stroke(black);}
  else{stroke(150);}
  circle(x,y,70); 
}
