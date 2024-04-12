int cookies;
int cookieanimation;
int clickers;
int biler;
int traktors;
int rumskibs;
int clickersAdd;

PImage clickerDesign;
PImage bilDesign;
PImage traktorDesign;
PImage rumskibDesign;
cookie cookien;
clicker cursor1;

void setup(){
  size(1920, 1080);
  cookien = new cookie(new PVector(width/2,150), new PVector(10,10));
  cursor1 = new clicker(new PVector(width/2,300), new PVector(10,10));
  
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
  textSize(100);
  text("Cookies: " + cookies, width/2-200,height/2-100);
  //antal upgrades man ejer
  textSize(25);
  text("Antal: " + clickers,200, 50);
  text("Antal: " + biler,200, 250);
  text("Antal: " + traktors,200,450);
  text("Antal: " + rumskibs,200,650);
  
  textSize(20);
  text("1x Pris: 10 Cookies", 300, 50);
  text("1x Pris: 100 Cookies", 300, 250);
  text("1x Pris: 1000 Cookies", 300, 450);
  text("1x Pris: 5000 Cookies", 300, 650);
  
  //Køb knapper
  fill(255,0,0);
  rect(200,70,140,80);
  rect(200,270,140,80);
  rect(200,470,140,80);
  rect(200,670,140,80);
  fill(0);
  textSize(75);
  text("KØB",200,135);
  text("KØB",200,335);
  text("KØB",200,535);
  text("KØB",200,735);
  
  cookien.render();
  cookien.update();
  
  if (clickers > 0){
    cursor1.render();
    cursor1.update();
    
  }

}
