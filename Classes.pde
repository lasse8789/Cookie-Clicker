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
    image(cookieDesign, pos.x, pos.y);
  }
  
}
