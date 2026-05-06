int mode;

//mode variables
final int intro = 0;
final int game = 1;
final int pause = 2;
final int gameover = 3;
final int options = 4;

//target variables
float x, y, d, dx, dy;
float vx, vy, vdx, vdy;

int da = 0;

int score;
int lives;

void setup(){
  size(1000, 1000);
  mode = intro;
  
  //target initialization
  x = width/2;
  y = height/2;
  d = 100;
  vx = random(-5, 5);
  vy = random(-5, 5);
  score = 0;
  lives = 5;
  
  //drone
  dx = width/2;
  dy = height/2;
  vdx = 5;
  vdy = 5;
  
}

void draw(){
  
  if (mode == intro){
    intro();
  }else if (mode == game){
    game();
  }else if (mode == pause){
    pause();
  }else if (mode == gameover){
    gameover();
  }else if (mode == options){
    options();
  }else{
  println("error");
  }
  
}
