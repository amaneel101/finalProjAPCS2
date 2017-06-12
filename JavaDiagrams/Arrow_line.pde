class Arrow_line extends Line{
  float x1, y1, x2, y2;
  
  int xNow;
  int yNow;
  
  boolean overComp = false;
  boolean locked = false;
  
  Arrow_line() {
    x1 = 300;
    y1 = 300;
    x2 = 400;
    y2 = 400;
    
    xNow = 300;
    yNow = 300;
   }
   
   Arrow_line(int x, int y, int xx, int yy) {
     x1 = x;
     y1 = y;
     x2 = xx;
     y2 = yy;
     
     xNow = Math.round(x);
     yNow = Math.round(y);
   }
   
  private void drawArrow(float x1, float y1, float x2, float y2) { // 
    float a = dist(x1, y1, x2, y2) / 50;
    pushMatrix();
    translate(x2, y2);
    rotate(atan2(y2 - y1, x2 - x1));
    triangle(- a * 2 , - a, 0, 0, - a * 2, a);
    popMatrix();
    line(x1, y1, x2, y2);  
  }
  
  public void display() {
    drawArrow(xNow,yNow,xNow + 100,yNow + 100);
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
  
  public void changeOver(boolean bool){
    super.changeOver(bool);
  }
  
  public void changeLocked(boolean bool){
    super.changeLocked(bool);
  }
  
  public boolean getLocked(){
    super.getLocked();
  }
  
  public boolean getOverComp(){
    super.getOverComp();
  }
}