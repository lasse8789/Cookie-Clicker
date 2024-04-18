void mousePressed (){
  if (mouseX < width/2+140 && mouseY < 275){
    if (mouseX > width/2-140 && mouseY > 20){
      if (clickers < 1){
        cookies = cookies+1*multiplier;
      } else {
        clickersAdd = 1+clickers;
        cookies = cookies+clickersAdd*multiplier;
      }
      cookieanimation = 1;
    }
    
  }
  //PRESTIGE KNAP
  if (mouseX > width/2-150 && mouseX < width/2+150){
    if (mouseY > height-300 && mouseY < height-220){
      if (cookies >= prestigePris){
        prestige();
      }
    }
    
  }
  
  //KØB KNAPPER
  if (mouseX > 200 && mouseX < 340){
    //CLICKERS
    if (mouseY > 70 && mouseY < 210){
      if (cookies >= clickerPris*købMode) {
        cookies = cookies-clickerPris*købMode;
        clickerPris = clickerPris+2*købMode;
        for (int ci = clickers; ci < 36; ci++){
          if (ci < clickers+købMode){
            clickerArray.add(new clicker(new PVector(width/2,300), new PVector(10,10)));
          }
        }
        clickers = clickers+1*købMode;
        
        //if (clickers < 36){
          //clickerArray.add(new clicker(new PVector(width/2,300), new PVector(10,10)));
        //}

      }
    }
    //BILER
    if (mouseY > 270 && mouseY < 410){
      if (cookies >= bilerPris*købMode) {
        biler = biler+1*købMode;
        cookies = cookies-bilerPris*købMode;
        bilerPris = bilerPris+10*købMode;
      }
    }
    //TRAKTORS
    if (mouseY > 470 && mouseY < 610){
      if (cookies >= traktorPris*købMode) {
        traktors = traktors+1*købMode;
        cookies = cookies-traktorPris*købMode;
        traktorPris = traktorPris+1250*købMode;
      }
    }
    //RUMSKIBS
    if (mouseY > 670 && mouseY < 810){
      if (cookies >= rumskibPris*købMode) {
        rumskibs = rumskibs+1*købMode;
        cookies = cookies-rumskibPris*købMode;
        rumskibPris = rumskibPris+25000*købMode;
      }
    }
    
  }
  
}

void keyPressed(){
  if (købMode == 1){
    købMode = 10;
  } else if (købMode == 10){
    købMode = 25;
  } else if (købMode == 25){
    købMode = 50;
  } else if (købMode == 50){
    købMode = 100;
  } else if (købMode == 100){
    købMode = 1;
  }
  
}
