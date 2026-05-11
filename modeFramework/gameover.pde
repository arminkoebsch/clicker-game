void gameover(){
  background(255, 0, 0);
  
  textSize(100);
  fill(0);
  tactile(500, 500);
  text("Retry", 500, 500);
  
  if (score > highscore){
    highscore = score;
  }
  
  fill(0);
  text("Highscore: " + highscore, 500, 700);
}

void gameoverClicks(){
  
  if (mouseX > 400 && mouseX < 600 && mouseY > 450 && mouseY < 550){
    mode = intro;
  }
  
}
