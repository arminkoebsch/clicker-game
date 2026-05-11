void pause() {
  //fill(255, 10);
  //rect(500, 500, 1000, 1000);
}

void pauseClicks() {
}

void keyReleased() {
  if (key == TAB) {
    if (mode == game){
      mode = pause;
    }else if (mode == pause){
      mode = game;
    }
  }
  
  if (key == 'n'){
    bx = dx;
    by = dy;
    ba = da;
  }
}
