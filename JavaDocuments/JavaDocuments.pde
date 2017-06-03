import controlP5.*;

ControlP5 ctrl;
String textInput;
int fontSize = 12;
//boolean firstLine = true;
//boolean secondLine = false;
int numLines = 1;
int yPos = 10;
String fontStyle = "serif";

void setup() {
  size(800,600);
  
  PFont font = createFont(fontStyle,fontSize);
  ctrl = new ControlP5(this);
  
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
  }
}