void gameover(){
  background(255, 0, 0);
  
  textSize(100);
  tactile(500, 500);
  text("Retry", 500, 500);
}

void gameoverClicks(){
  
  if (mouseX > 400 && mouseX < 600 && mouseY > 450 && mouseY < 550){
    mode = intro;
  }
  
}
