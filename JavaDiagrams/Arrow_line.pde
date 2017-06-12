//import java.lang.UnsupportedOperationException;

class Arrow_line extends Line{
  float x1, y1, x2, y2;
  
  int xNow;
  int yNow;
  
  //int yChange = 0;
  
  boolean overComp = false;
  boolean locked = false;
  
  Arrow_line() {
    x1 = 300;
    y1 = 300;
    x2 = 400;
    y2 = 300;
    
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
    drawArrow(xNow,yNow,xNow + 100,yNow);
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
    return super.getLocked();
  }
  
  public boolean getOverComp(){
    return super.getOverComp();
  }
  
  //public void setYChange(int y) {
  //  yChange = y;
  //}
  
  //void MousePressed() {
  //  yChange = 270;
  //}
  
  //public void display (Textfield field) {
  //  throw new UnsupportedOperationException();
  //}
}