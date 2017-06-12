import controlP5.*;
import static javax.swing.JOptionPane.*;
//import java.util.HashMap;
import java.util.List;

ControlP5 ctrl;
DropdownList chooseFont, chooseSize, chooseColor;
//ArrayList<Text_field> tf;
//ArrayList<Line> line;
//ArrayList<Arrow_line> arrow;
List<List> all = new ArrayList<List>(3);


List<Line> line = new ArrayList<Line>();
List<Text_field> tf = new ArrayList<Text_field>();
List<Arrow_line> arrow = new ArrayList<Arrow_line>();

//HashMap<String, Object> all_objects;
//ArrayList<Object> all_objects;

String textInput;
int fontSize = 12;
//boolean firstLine = true;
//boolean secondLine = false;
//int numLines = 1;
//int yPos = 20;
String fontStyle = "serif";
//boolean bover = false;
//boolean locked = false;

int numTextBoxes = 0;
int ln = 0;
int numArrow = 0;


int x1, y1, x2, y2;

void setup() {
  size(800,600);
  ctrl = new ControlP5(this);
  //line = new ArrayList<Line>();
  //tf = new ArrayList<Text_field>();
  //arrow = new ArrayList<Arrow_line>();
  //line.add(new Line(0,0,0,0));
  //tf.add(new Text_field("000"));
  //arrow.add(new Arrow_line(0,0,0,0));
  
  //noLoop();
  
  all.add(tf);
  all.add(line);
  all.add(arrow);
  
  tf.add(new Text_field("000",1000));
  line.add(new Line(1000,1000,1000,1000));
  arrow.add(new Arrow_line(1000,1000,1000,1000));
  
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
}

void draw() {
  background(255);
  
  for (List<Component> lists : all) for (Component component : lists) {
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
  /*ctrl.addTextfield("box" + str(numTextBoxes))
      .setPosition(random(200,300),random(200,300))
      .setSize(90,50)
      .setColorForeground(0xff000000)
      .setColorBackground(0xff000000)
      .setColorActive(0xff000000);*/
}

public void Line() {
  line.add(new Line());
  line.get(ln).display();
  ln++;
  //int startX = random(200,300);
  //int startY = random(200,300);
  
  //line(startX,startY,x2,y2);
  
  //line(300,300,400,400);
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
  save(filename);
}

void mousePressed(){
  //if(bover){
  //  locked = true;
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
  //if(locked){
  //}
  for (List<Component> lists : all) for (Component component : lists) {
    if (abs(component.getXVal() - mouseX) <= 10 && abs(component.getYVal() - mouseY) <= 10) {
      component.changeXVal(mouseX);
      component.changeYVal(mouseY);
    }
  }
}

void mouseReleased(){
  //locked = false;
}

// TODO:
// buttons
// lines/arrows (draggable)
// textbox (draggable)