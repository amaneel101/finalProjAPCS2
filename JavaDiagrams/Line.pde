class Line{
  int x1, y1, x2, y2;
  Line(){
    x1 = 300;
    y1 = 300;
    x2 = 400;
    y2 = 400;
  }
  public void display(){
    line(x1, y1, x2, y2);
  }
}