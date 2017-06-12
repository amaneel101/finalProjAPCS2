import controlP5.*;
import static javax.swing.JOptionPane.*;
import java.util.List;

ControlP5 ctrl;
DropdownList chooseFont, chooseSize, chooseColor;
List<List> all = new ArrayList<List>(3);


List<Line> line = new ArrayList<Line>();
List<Text_field> tf = new ArrayList<Text_field>();
List<Arrow_line> arrow = new ArrayList<Arrow_line>();

String fileName;


String textInput;
int fontSize = 12;
String fontStyle = "serif";

int numTextBoxes = 0;
int ln = 0;
int numArrow = 0;


int x1, y1, x2, y2;

void setup() {
  size(800,600);
  ctrl = new ControlP5(this);
  
  //noLoop();
  
  all.add(tf);
  all.add(line);
  all.add(arrow);
  
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
      
  ctrl.addButton("Line")
      .setPosition(650,250)
      .setSize(80,40);
      
  ctrl.addButton("Arrow")
      .setPosition(650,300)
      .setSize(80,40);
      
  ctrl.addButton("Save")
      .setPosition(650,500)
      .setSize(80,40);
      
  ctrl.addButton("Open")
      .setPosition(650,550)
      .setSize(80,40);
}

void draw() {
  background(255);
  
  for (List<Component> lists : all) for (Component component : lists) {
    if (abs(component.getXVal() - mouseX) <= 10 && abs(component.getYVal() - mouseY) <= 10) {
      component.changeOver(true); 
      if(component.getLocked() == false){
         component.changeXVal(mouseX);
         component.changeYVal(mouseY);
      }
      else{
        component.overComp = false;
      }
    }
    component.display();
  }
  //line(x1, y1, x2, y2);
  /*for(Line a : line){
    a.display();
  }
  for(Text_field a : tf){
    a.display();
  }*/
}

void customize(DropdownList ddl) {
  ddl.setBackgroundColor(color(190));
  ddl.setItemHeight(20);
  ddl.setBarHeight(20);
  ddl.setColorBackground(color(60));
  ddl.setColorActive(color(255,128));
}

public void Text_Box() {
  tf.add(new Text_field("box" + str(numTextBoxes)));
  tf.get(numTextBoxes).display();
  numTextBoxes++;
}

public void Line() {
  line.add(new Line());
  line.get(ln).display();
  ln++;

  x1 = 300;
  y1 = 300;
  x2 = 400;
  y2 = 400;
}

public void Arrow() {
  arrow.add(new Arrow_line());
  arrow.get(numArrow).display();
  numArrow++;
}

void Save() {
  String filename = showInputDialog("Enter filename");
  save(filename + ".jpg");
}

void Open() {
    selectInput("Choose a file to open:", "fileSelected");
}

void fileSelected(File selection) {
  if (selection == null) {
    println("window closed or pressed cancel");
  }
  else {
    println("Chosen " + selection.getAbsolutePath());
    fileName = selection.getName();
    System.out.println(selection.getName());
    openFile();
  }
}

void openFile() {
  //System.out.println("hi");
  noLoop();
  PImage img = loadImage(fileName);
  set(0,0,img);
}

void mousePressed(){
  for (List<Component> lists : all) for (Component component : lists) {
    if(component.getOverComp() == true){
      component.changeOver(true);
    } else{
      component.changeOver(false);
    }
  }
  
  //}else{
  //  locked = false;
  //}
  //
  // cycle through
  //all_objects = new HashMap<String, Object>();
  //all_objects = new ArrayList<Object>();
  //all_objects.add(tf);
  //all_objects.add(line);
  //all_objects.add(arrow);
  
  //for (int i = 0; i < all_objects.size(); i++) {
  //  for (int j = 0; j < all_objects.get(i).size(); j++) {
  //      if (all_objects.get(i).get(j)
  //  }
  //}
  
  //for (List<Component> lists : all) for (Component component : lists) {
  //  if (abs(component.getXVal() - mouseX) <= 3 && abs(component.getYVal() - mouseY) <= 3) {
      
  //  }
  //}
}

void mouseDragged(){
  for (List<Component> lists : all) for (Component component : lists) {
    if(component.getLocked() == true){
      component.changeXVal(mouseX);
      component.changeYVal(mouseY);
      component.display();
    }
  }
}

void mouseReleased(){
  for (List<Component> lists : all) for (Component component : lists) {
    component.changeLocked(false);
  }
}

// TODO:
// buttons
// lines/arrows (draggable)
// textbox (draggable)