class Text_field extends Component{
  String b;
  int xNow;
  int yNow;
  
  
  Text_field(String b){
    this.b = b;
    
    //xNow = random(200,300);
    //yNow = random(200,300);
    
    xNow = 300;
    yNow = 300;
  }
  
  Text_field(String str, int num) {
    b = str;
    xNow = num;
    yNow = num;
  }
  public void display(){
    ctrl.addTextfield("box" + str(numTextBoxes))
      .setPosition(xNow,yNow)
      .setSize(90,50)
      .setColorForeground(0xff000000)
      .setColorBackground(0xff000000)
      .setColorActive(0xff000000);
  }
  
  public int getXVal() {
   return xNow; 
  }
  
  public int getYVal() {
    return yNow;
  }
  
  public void changeXVal(int x) {
    xNow = x;
  }
  
  public void changeYVal(int y) {
    yNow = y;
  }
 }