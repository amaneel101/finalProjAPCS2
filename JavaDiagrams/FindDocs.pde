//class FindDocs {

//  import controlP5.*;
  
//  String fileName;
  
//  void setup() {
//    ctrl = new ControlP5(this);
    
//    ctrl.addButton("Open")
//        .setPosition(650,500)
//        .setSize(80,40);
//  }
  
//  void Open() {
//    selectInput("Choose a file to open:", "fileSelected");
//  }
  
//  void fileSelected(File selection) {
//    if (selection == null) {
//      println("window closed or pressed cancel");
//    }
//    else {
//      println("Chosen " + selection.getAbsolutePath());
//      fileName = selection.getName();
//      openFile();
//    }
//  }
  
//  void openFile() {
//    PImage img = loadImage(fileName);
//    set(0,0,img);
//  }
//}