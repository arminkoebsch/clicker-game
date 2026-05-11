void options(){
  background(150);
  
  fill(255, 0, 0);
  tactile(100, 50);
  text("Back", 100, 50);
  
  fill(0);
  text("Drone Colors", 500, 300);
  
  fill(0, 0, 255);
  tactile(500, 500);
  text("blue", 500, 500);
  
  fill(200);
  tactile(200, 500);
  text("white", 200, 500);
  
  fill(255, 0, 0);
  tactile(800, 500);
  text("red", 800, 500);
  
  stroke(255);
  line(100, 900, 900, 900);
  fill(100);
  circle(sx, 900, 50);//slider
  
  fill(255);
  stroke(0);
  circle(500, 700, d);
  
  
}

void optionsClicks(){
  if (mouseX > 10 && mouseX < 200 && mouseY > 10 && mouseY < 100){//back
    mode = intro;
  }
  
  if (mouseX > 200 - 150 && mouseX < 200 + 150 && mouseY > 500 - 50 && mouseY < 500 + 50){//white
    c = #FFFFFF;
  }
  
  if (mouseX > 500 - 150 && mouseX < 500 + 150 && mouseY > 500 - 50 && mouseY < 500 + 50){//blue
    c = #0000FF;
  }
  
  if (mouseX > 800 - 150 && mouseX < 800 + 150 && mouseY > 500 - 50 && mouseY < 500 + 50){//red
    c = #FF0000;
  }
  
  if (mouseX > 100 && mouseX < 900 && mouseY > 850 && mouseY < 950){//slider
    sx = mouseX;
    d = map(sx, 100, 900, 50, 150);
  }
}

void mouseDragged(){
  
  if (mouseX > 100 && mouseX < 900 && mouseY > 850 && mouseY < 950 && mode == options){
    sx = mouseX;
    d = map(sx, 100, 900, 50, 150);
  }
}
