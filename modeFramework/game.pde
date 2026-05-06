void game() {
  background(0, 255, 0);

  stroke(0);
  textSize(50);
  textAlign(CENTER, CENTER);
  text("score: " + score, width/2, 50);
  text("lives: " + lives, width/2, 100);

  fill(255);
  strokeWeight(5);
  circle(x, y, d);

  //moving
  x = x + vx;
  y = y + vy;

  //bouncing
  if (x < 0 + d/2 || x > width - d/2) {
    vx = vx * -1;
  }
  if (y < 0 + d/2 || y > height - d/2) {
    vy = vy * -1;
  }
  
  //drone
  pushMatrix();
  rectMode(CENTER);
  translate(dx, dy);
  rotate(radians(da));
  fill(255);
  rect(50, 0, 100, 100);
  fill(0);
  rect(-50, 0, 100, 100);
  
  popMatrix();
  
  if (keyPressed == true){
    if (key == 'w'){
      da = 270;
      dy = dy - vdy;
    }
    if (key == 'a'){
      da = 180;
      dx = dx - vdx;
    }
    if (key == 's'){
      da = 90;
      dy = dy + vdy;
    }
    if (key == 'd'){
      da = 0;
      dx = dx + vdx;
    }
  }
  
  
  
  
}

void gameClicks() {
  if (dist(mouseX, mouseY, x, y) < d/2) {
    score = score + 1;
  } else {
    lives = lives - 1;
    if (lives == 0) mode = gameover;
  }
}
