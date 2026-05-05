int mode;

//mode variables
final int intro = 0;
final int game = 1;
final int pause = 2;
final int gameover = 3;

//target variables
float x, y, d;

void setup(){
  size(1000, 1000);
  mode = intro;
  
  //target initialization
  x = width/2;
  y = height/2;
  d = 100;
  
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
  }else{
  println("error");
  }
  
}
