import controlP5.*;

ControlP5 ctrl;
String textInput;
int fontSize = 12;

void setup() {
  size(800,600);
  
  PFont font = createFont("serif",fontSize);
  
  ctrl = new ControlP5(this);
  
  ctrl.addTextfield("doc")
      .setPosition(10,10)
      //.setSize(760,560)
      .setHeight(fontSize + 4)
      .setFont(font)
      .setFocus(true)
      .setColor(color(0,0,0));
}

void draw() {
}