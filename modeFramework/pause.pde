void pause() {
  
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
}
