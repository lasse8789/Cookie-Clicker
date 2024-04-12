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
  //for later work
  cookies = 0;
  traktorDesign = loadImage("traktordesign.png");
  traktorDesign.resize(500,200);
  rumskibDesign = loadImage("Rumskibdesign.png");
  rumskibDesign.resize(500,200);
  bilDesign = loadImage("Bildesign.png");
  bilDesign.resize(500,200);
  clickerDesign = loadImage("Clickerdesign.png");
  clickerDesign.resize(500,200);
  
  
}

void draw(){
  textSize(100);
  background(125);
  // LOADING DESIGN
  imageMode(CORNER);
  image(clickerDesign,0,0);
  image(bilDesign,0,200);
  image(traktorDesign,0,400);
  image(rumskibDesign,0,600);
  //
  imageMode(CENTER);
  
  fill(0);
  text("Cookies: " + cookies, width/2-200,height/2-100);
  
  player1.render();
  player1.update();

}
