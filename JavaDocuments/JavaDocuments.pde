import controlP5.*;

ControlP5 ctrl;
DropdownList chooseFont;

String textInput;
int fontSize = 12;
//boolean firstLine = true;
//boolean secondLine = false;
int numLines = 1;
int yPos = 20;
String fontStyle = "serif";

void setup() {
  size(800,600);
  ctrl = new ControlP5(this);
  
  chooseFont = ctrl.addDropdownList("fontList")
                  .setPosition(10,5);
  customize(chooseFont);
  
  PFont font = createFont(fontStyle,fontSize);
  
  ctrl.addTextfield("line1")
      .setPosition(10,yPos)
      //.setSize(760,560)
      .setHeight(fontSize + 4)
      .setFont(font)
      .setFocus(true)
      .setColor(color(0,0,0));
}

void draw() {
  background(0);
}


void customize(DropdownList ddl) {
  ddl.setBackgroundColor(color(190));
  ddl.setItemHeight(20);
  ddl.setBarHeight(10);
  ddl.addItem("serif",0);
  ddl.addItem("sans-serif",1);
  ddl.setColorBackground(color(60));
  ddl.setColorActive(color(255,128));
}


void makeNewLine() {
  numLines++;
  yPos += 16;
  
  PFont font = createFont(fontStyle,fontSize);
  
  ctrl.addTextfield("line" + str(numLines))
    .setPosition(10,yPos + 16)
    //.setSize(760,560)
    .setHeight(fontSize + 4)
    .setFont(font)
    .setFocus(true)
    .setColor(color(0,0,0));
}

void keyPressed() {
  if (key == ENTER || key == RETURN) {
    makeNewLine();
    
    //for (int i = 1; i < numLines; i++) {
      //line1.setFocus(false);
    //}
  }
}