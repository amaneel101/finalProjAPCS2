import controlP5.*;

ControlP5 ctrl;
DropdownList chooseFont, chooseSize, chooseColor;

String textInput;
int fontSize = 12;
//boolean firstLine = true;
//boolean secondLine = false;
//int numLines = 1;
//int yPos = 20;
String fontStyle = "serif";

int numTextBoxes = 0;

void setup() {
  size(800,600);
  ctrl = new ControlP5(this);
  
  chooseFont = ctrl.addDropdownList("Font")
                  .setPosition(10,5)
                  .addItem("serif",0)
                  .addItem("sans-serif",1)
                  .addItem("monospace",2)
                  .addItem("fantasy",3)
                  .addItem("cursive",4);
  customize(chooseFont);
  
  chooseSize = ctrl.addDropdownList("Size")
                   .setPosition(110,5)
                   .addItem("2",0)
                   .addItem("6",1)
                   .addItem("12",2)
                   .addItem("36",3)
                   .addItem("72",4);
  customize(chooseSize);
  
  chooseColor = ctrl.addDropdownList("Color")
                    .setPosition(210,5)
                    .addItem("black",0)
                    .addItem("red",1)
                    .addItem("blue",2)
                    .addItem("yellow",3);
  customize(chooseColor);
  
  //PFont font = createFont(fontStyle,fontSize);
  
  ctrl.addButton("Text_Box")
      .setPosition(650,200)
      .setSize(80,40);
}

void draw() {
  background(255);
}

void customize(DropdownList ddl) {
  ddl.setBackgroundColor(color(190));
  ddl.setItemHeight(20);
  ddl.setBarHeight(20);
  ddl.setColorBackground(color(60));
  ddl.setColorActive(color(255,128));
}

public void Text_Box() {
  numTextBoxes++;
  ctrl.addTextfield("box" + str(numTextBoxes))
      .setPosition(300,300)
      .setSize(90,50)
      .setColorForeground(0xff000000)
      .setColorBackground(0xff000000)
      .setColorActive(0xff000000);
}


// TODO:
// buttons
// lines/arrows (draggable)
// textbox (draggable)