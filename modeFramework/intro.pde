void intro(){
  textSize(100);
  lives = 5;
  score = 0;
  dx = width/2;
  dy = 900;
  rectMode(CENTER);
  textAlign(CENTER, CENTER);
  background(0, 0, 255);
  strokeWeight(10);
  
  fill(0, 255, 0);
  tactile(500, 500);
  text("PLAY", 500, 500);
  
  fill(#FFF700);
  tactile(500, 700);
  text("options", 500, 700);
}

void introClicks(){
  if (mouseX > 400 && mouseX < 600 && mouseY > 450 && mouseY < 550){
    mode = game;
  }
  if (mouseX > 400 && mouseX < 600 && mouseY > 650 && mouseY < 750){
    mode = options;
  }
}
