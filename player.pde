class Player{
  float posx;
  float posy;
  int state;
  int animate;
  int reach;
  int stretch;
  int doing;
  
  Player(float x, float y){
    posx = x;
    posy = y;
    state = 0;
    animate = -1;
    reach = 0;
    stretch = 0;
    doing = 0;
  }
  
  void display(){
    if (keyPressed){
      if(key == 'a'){
        if (doing != 1){
          animate = 0;
        }
        doing = 1;
        posx -= 10;
      }
      if(key == 'd'){
        if (doing != 2){
          animate = 0;
        }
        doing = 2;
        posx += 20;
        if (animate<5){
          animate+=1;
        }else{
          animate=0;
        }
        image(run[animate], posx, posy, 230 ,180);
      }      
      if(key == 'w'){
        if (doing != 3){
          animate = 0;
        }
        doing = 3;
        if (animate<1){
          animate+=1;
          
        }else if(animate<4){
          print(4);
          animate+=1;
          posy += 20;
        }else if(animate<6){
          print(6);
          animate+=1;
          posy -= 30;
        }else{
          animate=0;
        }
        image(jump[animate], posx, posy, 230 ,180);
      }     
      if(key == 's'){
        if (doing != 4){
          animate = 0;
        }
        doing = 4;
      }
    }else{
      if (doing != 0){
          animate = 0;
        }
        doing = 0;
      if (animate<3){
        animate+=1;
      }else{
        animate=0;
      }
      image(idle[animate], posx, posy, 230 ,180);
    }
   
  }
  
  
}
