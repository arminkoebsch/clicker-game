int mode;

color c;

//mode variables
final int intro = 0;
final int game = 1;
final int pause = 2;
final int gameover = 3;
final int options = 4;

//target variables
float x, y, d, dx, dy, bx, by;
float vx, vy, vdx, vdy, vb;

int da = 0;
int ba = 0;

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
  lives = 1;
  
  //drone
  dx = width/2;
  dy = 900;
  vdx = 5;
  vdy = 5;
  c = #FFFFFF;
  
  //bullet
  bx = 2000;
  by = 2000;
  vb = 10;
  
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
