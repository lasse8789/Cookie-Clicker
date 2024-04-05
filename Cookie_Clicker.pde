int cookies;
int cookieanimation;

PImage clickers;
cookie player1;

void setup(){
  size(1920, 1080);
  player1 = new cookie(new PVector(width/2,150), new PVector(10,10));
  cookieanimation = 0;
  //for later work
  cookies = 0;
  clickers = loadImage("clickers.png");
  image(clickers,0,0);
  
  
}

void draw(){
  imageMode(CENTER);
  background(125);
  textSize(100);
  
  fill(0);
  text("Cookies: " + cookies, width/2-200,height/2-100);
  
  player1.render();
  player1.update();

}
