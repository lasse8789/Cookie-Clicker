int cookies;
int cookieanimation;

PImage clickerDesign;
PImage bilDesign;
PImage traktorDesign;
PImage rumskibDesign;
cookie player1;

void setup(){
  size(1920, 1080);
  player1 = new cookie(new PVector(width/2,150), new PVector(10,10));
  cookieanimation = 0;
  background(125);
  //for later work
  cookies = 0;
  //loading Design
  clickerDesign = loadImage("Clickerdesign.png");
  clickerDesign.resize(500,200);
  image(clickerDesign,0,0);
  bilDesign = loadImage("Bildesign.png");
  bilDesign.resize(500,200);
  image(bilDesign,0,200);
  traktorDesign = loadImage("traktordesign.png");
  traktorDesign.resize(500,200);
  image(traktorDesign,0,400);
  rumskibDesign = loadImage("Rumskibdesign.png");
  rumskibDesign.resize(500,200);
  image(rumskibDesign,0,600);
  
  
}

void draw(){
  imageMode(CENTER);
  textSize(100);
  
  fill(0);
  text("Cookies: " + cookies, width/2-200,height/2-100);
  
  player1.render();
  player1.update();

}
