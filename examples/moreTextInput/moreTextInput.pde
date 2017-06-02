int currentString = 0;
String current = "";
String art1T = "";
String art1B = "";
String art2T = "";
String art2B = "";
 
color art1Tc= 150;
color art1Bc= 150;
color art2Tc= 150;
color art2Bc= 150;
 
int art1Tp;
int art1Bp;
int art2Tp;
int art2Bp;
void setup(){
  size(1000,700);
  background(200);
}
 
void draw() {
  float art1Tp = textWidth (art1T);
    float art1Bp = textWidth (art1B);
    float art2Tp = textWidth (art2T);
    float art2Bp = textWidth (art2B);
   stroke(100);
    if (mouseX >= 250 && mouseX <= 900 && 
    mouseY >= 50 && mouseY <= 80) {
      if(mousePressed){
        currentString = 1;
        current = art1T;
      }
    }
    fill(art1Tc);
    rect(250,50,650,30,10);
 
    if (mouseX >= 250 && mouseX <= 900 && 
    mouseY >= 100 && mouseY <= 220) {
      if(mousePressed){
        currentString = 2;
        current = art1B;
      }
    }
    fill(art1Bc);
    rect(250,100,650,120,10);
 
    if (mouseX >= 250 && mouseX <= 900 && 
    mouseY >= 240 && mouseY <= 270) {
      if(mousePressed){
        currentString = 3;
        current = art2T;
      }
    }
    fill(art2Tc);
    rect(250,240,650,30,10);
 
 
    if (mouseX >= 250 && mouseX <= 900 && 
    mouseY >= 290 && mouseY <= 410) {
      if(mousePressed){
        currentString = 4;
        current = art2B;
      }
    }
    fill(art2Bc);
    rect(250,290,650,120,10);
 
    fill(0);
    stroke(0);
 
 
    if(currentString == 1){
      line(art1Tp+260, 55, art1Tp+260, 75);
      art1T = current;
      art1Tc= 250;
      art1Bc= 150;
      art2Tc= 150;
      art2Bc= 150;
    }else if(currentString == 2){
      line(art1Bp+260, 105, art1Bp+260, 125);
      art1B = current;
      art1Tc= 150;
      art1Bc= 250;
      art2Tc= 150;
      art2Bc= 150;
    }else if(currentString == 3){
      line(art2Tp+260, 245, art2Tp+260, 265);
      art2T = current;
      art1Tc =150;
      art1Bc =150;
      art2Tc =250;
      art2Bc =150;
      }else if(currentString == 4) {
      line(art2Bp+260, 295, art2Bp+260, 315);
      art2B = current;
      art1Tc =150;
      art1Bc =150;
      art2Tc =150;
      art2Bc =250;
      }
 
 
 
    text("Article 1 title",250,45);
    text(art1T, 260, 70);
    text("Article 1 body",250,95);
    text(art1B, 260, 120);
    text("Article 2 title",250,235);
    text(art2T,260,260);
    text("Article 2 body",250,285);
    text(art2B,260,310);
    }
 
    void keyPressed() {
  if (keyCode == BACKSPACE) {
    if (current.length() > 0) {
      current = current.substring(0, current.length()-1);
    }
  } else if (keyCode != SHIFT && keyCode != CONTROL && keyCode != ALT) {
    current = current + key;
  }
}