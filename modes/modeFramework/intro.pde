void intro(){
  background(255);
  
  rect(300, 700, 400, 200);
}

void introClicks(){
  if (mouseX  > 300 && mouseX < 700 && mouseY > 700 && mouseY < 900){
    mode = game;
  }
}
