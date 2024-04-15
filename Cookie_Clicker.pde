int cookies;
int cookieanimation;
int clickers;
int clickerPris;
int biler;
int bilerPris;
int traktors;
int traktorPris;
int rumskibs;
int rumskibPris;
int clickersAdd;
int købMode;

PImage clickerDesign;
PImage bilDesign;
PImage traktorDesign;
PImage rumskibDesign;
cookie cookien;
clicker cursor1;
clicker cursor2;
clicker cursor3, cursor4, cursor5, cursor6;

void setup(){
  size(1920, 1080);
  cookien = new cookie(new PVector(width/2,150), new PVector(10,10));
  cursor1 = new clicker(new PVector(width/2,300), new PVector(10,10));
  cookieanimation = 0;
  //for later work
  cookies = 0;
  traktorDesign = loadImage(sketchPath("Images/traktordesign.png"));
  traktorDesign.resize(500,200);
  rumskibDesign = loadImage(sketchPath("Images/Rumskibdesign.png"));
  rumskibDesign.resize(500,200);
  bilDesign = loadImage(sketchPath("Images/Bildesign.png"));
  bilDesign.resize(500,200);
  clickerDesign = loadImage(sketchPath("Images/Clickerdesign.png"));
  clickerDesign.resize(500,200);
  clickerPris = 10;
  bilerPris = 150;
  traktorPris = 2500;
  rumskibPris = 50000;
  købMode = 1;
  
  
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
  text(købMode + "x Pris: " + clickerPris*købMode + " Cookies", 300, 50);
  text(købMode + "x Pris: " + bilerPris*købMode + " Cookies", 300, 250);
  text(købMode + "x Pris: " + traktorPris*købMode + " Cookies", 300, 450);
  text(købMode + "x Pris: " + rumskibPris*købMode + " Cookies", 300, 650);
  
  //Køb knapper

  if (cookies < clickerPris*købMode){
    fill(255,0,0);
  } else {
    fill(0,255,0);
  }
  rect(200,70,140,80);
  if (cookies < bilerPris*købMode){
    fill(255,0,0);
  } else {
    fill(0,255,0);
  }
  rect(200,270,140,80);
  if (cookies < traktorPris*købMode){
    fill(255,0,0);
  } else {
    fill(0,255,0);
  }
  rect(200,470,140,80);
  if (cookies < rumskibPris*købMode){
    fill(255,0,0);
  } else {
    fill(0,255,0);
  }
  rect(200,670,140,80);
  fill(0);
  textSize(75);
  text("KØB",200,135);
  text("KØB",200,335);
  text("KØB",200,535);
  text("KØB",200,735);
  
  cookien.render();
  
  if (clickers > 0){
    cursor1.roter();
  //} if (clickers > 5){
  //  cursor2.roter();
  //} if (clickers > 10){
  //  cursor3.roter();
  //} if (clickers > 25){
  //  cursor4.roter();
  //} if (clickers > 50){
  //  cursor5.roter();
  //} if (clickers > 100){
  //  cursor6.roter();
  }

}
