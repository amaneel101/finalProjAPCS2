//import java.lang.UnsupportedOperationException;

class Line extends Component{
  int x1, y1, x2, y2;
  
  int xNow;
  int yNow;
  //int yChange = 0;
  
  boolean overComp = false;
  boolean locked = false;
 
  Line(){
    x1 = 300;
    y1 = 300;
    x2 = 400;
    y2 = 300;
    
    xNow = 300;
    yNow = 300;
  }
  
  Line(int x, int y, int xx, int yy) {
    x1 = x;
    y1 = y;
    xx = x2;
    yy = y2;
    
    xNow = x;
    yNow = y;
  }
  public void display(){
    line(xNow, yNow, xNow + 100, yNow);
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
  // yChange = y;
  //}
  
  //void MousePressed() {
  //  yChange = 270;
  //}
  
  //public void display(Textfield field) {
  //  throw new UnsupportedOperationException();
  //}
  
}