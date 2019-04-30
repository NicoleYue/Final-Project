class Player{
  float posx;
  float posy;
  int state;
  int animate;
  int reach;
  int stretch;
  
  Player(float x, float y){
    posx = x;
    posy = y;
    state = 0;
    animate = -1;
    reach = 0;
    stretch = 0;
  }
  
  void display(){
    if (keyPressed){
      if(key == 'a'){
        posx -= 10;
      }
      if(key == 'd'){
        posx += 15;
        if (animate<5){
          animate+=1;
        }else{
          animate=0;
        }
        image(run[animate], posx, posy, 230 ,180);
      }      
      if(key == 'w'){
      }     
      if(key == 's'){
      }
    }else{
      if (animate<3){
        animate+=1;
      }else{
        animate=0;
      }
      image(idle[animate], posx, posy, 230 ,180);
    }
   
  }
  
  
}
