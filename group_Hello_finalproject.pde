Boolean gameover;
PImage map1;
PImage house;
PImage[] idle = new PImage[4];
PImage[] run = new PImage[6];
int gameWidth;
int gameHeight;
Player p1;


void setup() {
  gameWidth = 3000;
  gameHeight = 1000;
  size(3000, 1000);
  map1 = loadImage("map1.png");
  house = loadImage("house.png");
  idle[0] = loadImage("idle0.png");
  idle[1] = loadImage("idle1.png");
  idle[2] = loadImage("idle2.png");
  idle[3] = loadImage("idle3.png");
  run[0] = loadImage("run0.png");
  run[1] = loadImage("run1.png");
  run[2] = loadImage("run2.png");
  run[3] = loadImage("run3.png");
  run[4] = loadImage("run4.png");
  run[5] = loadImage("run5.png");
  gameover = true;
  p1 = new Player(100,345);
}

void draw() {
  //start screen
  if (gameover == true) {
     //background
     tint(150);
     image(map1, 0, 0, gameWidth , gameHeight);
     
     //text
     textSize(100);
     textAlign(CENTER, CENTER);
     fill(255);
     text("Welcome to the Mystery World!",width/2,height/6);
     
     //begin to play
     if ((mouseX>width/2-150 && mouseX<width/2+150) && (mouseY>height/3 && mouseY<height/3+100)){
       fill(255);
       rect(width/2-150,height/3,300,100);
       textSize(80);
       textAlign(CENTER, CENTER);
       fill(87);
       text("Play",width/2,height/3+40);
       if (mousePressed==true){
         gameover = false;
         tint(255);
       }
     }else{
       strokeWeight(7);
       stroke(255);
       noFill();
       rect(width/2-150,height/3,300,100);
       textSize(80);
       textAlign(CENTER, CENTER);
       fill(255);
       text("Play",width/2,height/3+40);
     }
     
     if ((mouseX>width/2-150 && mouseX<width/2+150) && (mouseY>height/2 && mouseY<height/2+100)){
       fill(255);
       rect(width/2-150,height/2,300,100);
       textSize(80);
       textAlign(CENTER, CENTER);
       fill(87);
       text("Exit",width/2,height/2+40);
       if (mousePressed==true){
         exit();
       }
     }else{
       strokeWeight(7);
       stroke(255);
       noFill();
       rect(width/2-150,height/2,300,100);
       textSize(80);
       textAlign(CENTER, CENTER);
       fill(255);
       text("Exit",width/2,height/2+40);
     }
     
  //play the game
  }else{
    image(map1, 0, 0, gameWidth , gameHeight);
    image(house, 2660, 300, 220 , 220);
    p1.display();

  }
}
