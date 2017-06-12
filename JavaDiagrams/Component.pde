abstract class Component {
  boolean overComp = false;
  boolean locked = false;
  int num = 9;
  
  public abstract int getXVal();
  public abstract int getYVal();
  public abstract void display();
  //public abstract void display(Textfield field);
  public abstract void changeXVal(int x);
  public abstract void changeYVal(int y);
  
  
  @Override String toString() {
    return "num: " + num;
  }

  public void changeOver(boolean bool){
    if(bool){
      overComp = true;
    }
    else{ overComp = false; }
  }
  
  public void changeLocked(boolean bool){
    if(bool){
      locked = true;
    }
    else{ locked = false; }
  }
  
  public boolean getLocked(){
    return locked;
  }
  
  public boolean getOverComp(){
    return overComp;
  }
  
}  
  
  