abstract class Component {
  int num = 9;
  
  public abstract int getXVal();
  public abstract int getYVal();
  public abstract void display();
  public abstract void changeXVal(int x);
  public abstract void changeYVal(int y);
  
  
  @Override String toString() {
    return "num: " + num;
  }

}