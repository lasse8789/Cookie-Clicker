cookie player1;

void setup(){
  size(1920, 1080);
  player1 = new cookie(new PVector(width/2,50), new PVector(10,10));
  
  
}

void draw(){
  imageMode(CENTER);
  background(255);
  
  player1.render();
  player1.update();

}
