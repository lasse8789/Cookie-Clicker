class Entity {
  String type = "entity";
  boolean remove = false;
  PVector pos;
  PVector size;
  PVector velocity;
  
  void update(){
    pos.x += velocity.x;
    pos.y += velocity.y;
  }
  
  void render(){
    
  }
  
  PVector getPos(){
    return pos;
  }
  
  void setPos(PVector setPos){
    pos = setPos;
  }
  
  PVector getVelocity(){
    return velocity;
  }
  
  void setelocityelocity(PVector setVelocity){
    velocity = setVelocity;
  }
}

class Creature extends Entity{
  int HP;
  
  Boolean collision(Entity entity){
    if (entity.pos.x-entity.size.x/2 < this.pos.x+this.size.x/2 && 
        entity.pos.x+entity.size.x/2 > this.pos.x-this.size.x/2 &&
        entity.pos.y-entity.size.y/2 < this.pos.y+this.size.y/2 && 
        entity.pos.y+entity.size.y/2 > this.pos.y-this.size.y/2){
    
        return true;
    }
    
    return false;
  }
  
}

class clicker extends Creature{
  PImage clickerFlyvDesign;
  PVector target2;
  float speed2;
  clicker(PVector setPos, PVector setSize){
    pos = setPos;
    size = setSize;
    clickerFlyvDesign = loadImage("clickeren.png");
    clickerFlyvDesign.resize(50,50);
    
    velocity = new PVector(0, 0);
    
  }
  void update(){
    pos.x += velocity.x;
    pos.y += velocity.y;
  }
  void render(){
    image(clickerFlyvDesign, pos.x, pos.y);
  }
  
}

class cookie extends Creature{
  PImage cookieDesign;
  PVector target2;
  float speed2;
  cookie(PVector setPos, PVector setSize){
    pos = setPos;
    size = setSize;
    cookieDesign = loadImage("cookie.png");
    cookieDesign.resize(250,250); 
    
    
    velocity = new PVector(0, 0);
  }
  
  void update(){
    pos.x += velocity.x;
    pos.y += velocity.y;
  }
  void render(){
    
    //noter til senere
    //brug "rotate()" til cursorsne
    
    //cookie animation on click
    if (cookieanimation == 1){
      translate(-96,-10);
      scale(1.1);
      cookieanimation = 2;
    } else if (cookieanimation == 2) {
      scale(1);
      cookieanimation = 0;
      
    }
    image(cookieDesign, pos.x, pos.y);
    

    
  }
  
}
