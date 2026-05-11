void game() {
  background(0, 255, 0);
  
  //image(city, 500, 500);

  stroke(0);
  textSize(50);
  textAlign(CENTER, CENTER);
  text("score: " + score, width/2, 50);
  text("lives: " + lives, width/2, 100);

  fill(255);
  strokeWeight(5);
  circle(x, y, d);

  //moving
  x = x + vx *score/2;
  y = y + vy *score/2;

  //bouncing
  if (x < 0 + d/2 || x > width - d/2) {
    vx = vx * -1;
  }
  if (y < 0 + d/2 || y > height - d/2) {
    vy = vy * -1;
  }


  stroke(255, 0, 0);
  circle(bx, by, 20);//bullet

  //drone
  pushMatrix();
  rectMode(CENTER);
  translate(dx, dy);
  rotate(radians(da));
  stroke(0);
  fill(255);
  rect(20, 0, 100, 20);//gun
  fill(c);
  ellipse(0, 0, 100, 70);//body
  fill(255, 0, 0);
  circle(30, 10, 15);
  circle(30, -10, 15);
  fill(150);
  circle(30, 40, 40);
  circle(30, -40, 40);
  circle(-30, -40, 40);
  circle(-30, 40, 40);

  popMatrix();

  if (keyPressed == true) {//drone mouvement
    if (key == 'w') {
      da = 270;
      dy = dy - vdy;
    }
    if (key == 'a') {
      da = 180;
      dx = dx - vdx;
    }
    if (key == 's') {
      da = 90;
      dy = dy + vdy;
    }
    if (key == 'd') {
      da = 0;
      dx = dx + vdx;
    }
  }


  if (ba == 0) {//bullet movement
    bx = bx + vb;
  }
  if (ba == 180) {
    bx = bx - vb;
  }
  if (ba == 90) {
    by = by + vb;
  }
  if (ba == 270) {
    by = by - vb;
  }

  

  if (dist(x, y, bx, by) < d/2 + 10) {//bullet collision
    score = score + 1;
    bx = 2000;
    by = 2000;
  }

  if (dist(x, y, dx, dy) < d/2 + 50) {//drone collision
    lives = lives - 1;
    x =  500;
    y = 100;
    vx = random(-5, 5);
    vy = random(-5, 5);
  }
  
  if (lives == 0){
    mode = gameover;
  }
  
  if (dx < 0 || dx > 1000 || dy < 0 || dy > 1000){
    lives = lives - 1;
    dx = 500;
    dy = 500;
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
