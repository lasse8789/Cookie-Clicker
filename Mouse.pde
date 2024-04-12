void mousePressed (){
  if (mouseX < width/2+140 && mouseY < 275){
    if (mouseX > width/2-140 && mouseY > 20){
      cookies++;
      cookieanimation = 1;
    }
    
  }
  
  //KØB KNAPPER
  if (mouseX > 200 && mouseX < 340){
    //CLICKERS
    if (mouseY > 70 && mouseY < 210){
      clickers++;
    }
    //BILER
    if (mouseY > 270 && mouseY < 410){
      biler++;
    }
    //TRAKTORS
    if (mouseY > 470 && mouseY < 610){
      traktors++;
    }
    //RUMSKIBS
    if (mouseY > 670 && mouseY < 810){
      rumskibs++;
    }
    
  }
  
}
