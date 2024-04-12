void mousePressed (){
  if (mouseX < width/2+140 && mouseY < 275){
    if (mouseX > width/2-140 && mouseY > 20){
      if (clickers < 1){
        cookies++;
      } else {
        clickersAdd = 1+clickers;
        cookies = cookies+clickersAdd;
      }
      cookieanimation = 1;
    }
    
  }
  
  //KØB KNAPPER
  if (mouseX > 200 && mouseX < 340){
    //CLICKERS
    if (mouseY > 70 && mouseY < 210){
      if (cookies >= 10) {
        clickers++;
        cookies = cookies-10;
      }
    }
    //BILER
    if (mouseY > 270 && mouseY < 410){
      if (cookies >= 100) {
        biler++;
        cookies = cookies-100;
      }
    }
    //TRAKTORS
    if (mouseY > 470 && mouseY < 610){
      if (cookies >= 1000) {
        traktors++;
        cookies = cookies-1000;
      }
    }
    //RUMSKIBS
    if (mouseY > 670 && mouseY < 810){
      if (cookies >= 5000) {
        rumskibs++;
        cookies = cookies-5000;
      }
    }
    
  }
  
}
