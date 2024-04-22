int addToCookie;
public int addScreen(){
  addToCookie = biler*25;
  addToCookie = traktors*500+addToCookie;
  addToCookie = rumskibs*5000+addToCookie;
  addToCookie = addToCookie*multiplier;
  return addToCookie;
}

public void addCookies(){
  addToCookie = biler*25;
  addToCookie = traktors*500+addToCookie;
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
  clickerArray = new ArrayList<clicker>();
  popupScreen = true;
  timer = frameCount; 
}

public void saveGame(){
  String word1 = str(cookies);
  String word2 = str(prestige);
  String word3 = str(prestigePris);
  String word4 = str(multiplier);
  String word5 = str(clickers);
  String word6 = str(clickerPris);
  String word7 = str(biler);
  String word8 = str(bilerPris);
  String word9 = str(traktors);
  String word10 = str(traktorPris);
  String word11 = str(rumskibs);
  String word12 = str(rumskibPris);
  String words = word1 + " " + word2 + " " + word3 + " " + word4 + " " + word5 + " " + word6 + " " + word7 + " " + word8 + " " + word9 + " " + word10 + " " + word11 + " " + word12;
  String[] stringArray = split(words, ' ');
  saveStrings("data.txt", stringArray);
  saveScreen = true;
  timerSave = frameCount;
}
