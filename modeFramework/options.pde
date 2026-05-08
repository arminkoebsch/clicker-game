void options(){
  background(150);
  
  tactile(100, 50);
  text("Back", 100, 50);
  
  fill(0);
  text("Drone Colors", 500, 300);
  
  fill(0, 0, 255);
  tactile(500, 500);
  text("blue", 500, 500);
  
  fill(255);
  tactile(200, 500);
  text("white", 200, 500);
  
  fill(255, 0, 0);
  tactile(800, 500);
  text("red", 800, 500);

}

void optionsClicks(){
  if (mouseX > 10 && mouseX < 200 && mouseY > 10 && mouseY < 100){
    mode = intro;
  }
  
  
}
