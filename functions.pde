int addToCookie;
public int addScreen(){
  addToCookie = biler*5;
  addToCookie = traktors*100+addToCookie;
  addToCookie = rumskibs*5000+addToCookie;
  addToCookie = addToCookie*multiplier;
  return addToCookie;
}

public void addCookies(){
  addToCookie = biler*5;
  addToCookie = traktors*100+addToCookie;
  addToCookie = rumskibs*5000+addToCookie;
  addToCookie = addToCookie*multiplier;
  cookies = cookies+addToCookie;
}

public void prestige(){
  cookies = 0;
  addToCookie = 0;
  multiplier = multiplier+1;
  prestige = prestige+1;
  prestigePris = prestigePris+1000000;
  biler = 0;
  clickers = 0;
  traktors = 0;
  rumskibs = 0;
  clickerPris = 10;
  bilerPris = 150;
  traktorPris = 2500;
  rumskibPris = 50000;
  
  //MÅSKE EN POP UP SCREEN?
  
}
