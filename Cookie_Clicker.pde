int cookies, cookiesPs, cookieanimation;
int clickers, clickerPris, clickersAdd;
int biler, bilerPris;
int traktors, traktorPris;
int rumskibs, rumskibPris;
int købMode, multiplier, prestige, prestigePris;
PImage clickerDesign, bilDesign, traktorDesign, rumskibDesign;
boolean popupScreen;
boolean saveScreen;
cookie cookien;
//clicker cursor1, cursor2, cursor3, cursor4, cursor5, cursor6, cursor7, cursor8, cursor9, cursor10;
ArrayList<clicker> clickerArray;
//Timer til når man prestiger som sørger for at popup skærmen er på i 3 sekunder og til save screen
int timer;
int timerSave;



void setup(){
  size(1920, 1080);
  frameRate(60);
  clickerArray = new ArrayList<clicker>();
  cookien = new cookie(new PVector(width/2,150), new PVector(10,10));
  
  //default setting
  købMode = 1;
  cookies = 0;
  prestige = 0;
  clickers = 0;
  biler = 0;
  prestigePris = 1000000;
  multiplier = 1;
  clickerPris = 10;
  bilerPris = 150;
  traktorPris = 2500;
  rumskibPris = 50000;
  
  //loading saved data

  String[] data = loadStrings("data.txt");
  if (data != null) {
    for (int i = 0 ; i < data.length; i++){
      if (int(data[i]) > 0) {
        if (i == 0){
          cookies = int(data[i]);
        } else if (i == 1){
          prestige = int(data[1]);
        } else if (i == 4){
          clickers = int(data[4]);
        } else if (i == 6){
          biler = int(data[6]);
        } else if (i == 8) {
          traktors = int (data[8]);
        } else if (i == 10) {
          rumskibs = int (data[10]);
        }
      } else if (int(data[i]) > 1000000) {
        if (i == 2) {
          prestigePris = int(data[2]);
        }
      } else if (int(data[i]) > 1) {
        if (i == 3) {
          multiplier = int(data[3]);
        }
      } else if (int(data[i]) > 10) {
        if (i == 5) {
          clickerPris = int(data[i]);
        }  
      } else if (int(data[i]) > 150) {
        if (i == 7) {
          bilerPris = int(data[i]);
        }
      } else if (int(data[i]) > 2500) {
        if (i == 9) {
          traktorPris = int(data[i]);
        }
      } else if (int(data[i]) > 50000) {
        if (i == 11) {
          rumskibPris = int(data[i]);
        }
      }
    
      
    }
  }
  
  
  //loading animation and images
  cookieanimation = 0;
  traktorDesign = loadImage(sketchPath("Images/traktordesign.png"));
  traktorDesign.resize(500,200);
  rumskibDesign = loadImage(sketchPath("Images/Rumskibdesign.png"));
  rumskibDesign.resize(500,200);
  bilDesign = loadImage(sketchPath("Images/Bildesign.png"));
  bilDesign.resize(500,200);
  clickerDesign = loadImage(sketchPath("Images/Clickerdesign.png"));
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
  imageMode(CENTER);
  
  if (frameCount % 60 == 0){
    addCookies();
  }
  
  cookiesPs = addScreen();
  
  textSize(100);
  fill(0);
  text("Cookies/s: " + cookiesPs, width/2-200,height/2+100);
  text("Cookies: " + cookies, width/2-200,height/2-100);
  //antal upgrades man ejer
  textSize(25);
  text("Antal: " + clickers,200, 50);
  text("Antal: " + biler,200, 250);
  text("Antal: " + traktors,200,450);
  text("Antal: " + rumskibs,200,650);
  
  //pris skilte
  textSize(20);
  text(købMode + "x Pris: " + clickerPris*købMode + " Cookies", 300, 50);
  text(købMode + "x Pris: " + bilerPris*købMode + " Cookies", 300, 250);
  text(købMode + "x Pris: " + traktorPris*købMode + " Cookies", 300, 450);
  text(købMode + "x Pris: " + rumskibPris*købMode + " Cookies", 300, 650);
  
  //Prestige og multiplier
  fill(255,0,255);
  rect(width-300,0,300,150);
  fill(0);
  textSize(45);
  text("Multiplier",width-225,50);
  text(multiplier,width-150,120);
  fill(255,0,0);
  rect(width-300,150,300,150);
  fill(0);
  textSize(45);
  text("Prestige: " + prestige,width-225,200);
  int n = prestigePris/1000000;
  text("Pris: " + n + " Mil", width-225,270);
  
  if (cookies < prestigePris){
    fill(255,0,0);
  } else {
    fill(0,255,0);
  }
  rect(width/2-150,height-300,300,80);
  
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
  text("PRESTIGE", width/2-155,height-230);
  
  cookien.render();
  for (clicker x : clickerArray){
    x.roter();
  }
  
  if (popupScreen == true){
    if ((frameCount - timer) % 180 == 0){
      popupScreen = false;
    }
    fill(0, 100);
    rect(0,0,width,height);
    fill(255);
    text("PRESTIGED TIL " + prestige, width/2-100,height/2);
    
  }
  
  if (saveScreen == true) {
    if ((frameCount - timerSave) % 120 == 0){
      saveScreen = false;
    }
    fill(255);
    text("GAME SAVED", width-400,height-200);
  }
  
  //AutoSave
  if (frameCount %3600 == 0) {
    saveGame();
  }
  
  //if (clickers > 0){
  //  cursor1.roter();
  //} if (clickers > 1){
  //  cursor2.roter();
  //} if (clickers > 2){
  //  cursor3.roter();
  //} if (clickers > 3){
  //  cursor4.roter();
  //} if (clickers > 4){
  //  cursor5.roter();
  //} if (clickers > 5){
  //  cursor6.roter();
  //}if (clickers > 6){
  //  cursor7.roter();
  //}if (clickers > 7){
  //  cursor8.roter();
  //}if (clickers > 8){
  //  cursor9.roter();
  //}if (clickers > 9){
  //  cursor10.roter();
 // }
  
  

}

void exit(){
   saveGame();
   super.exit();
}
