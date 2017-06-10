class Arrow_line {
  float x1, y1, x2, y2;
  
  Arrow_line() {
    x1 = 300;
    y1 = 300;
    x2 = 400;
    y2 = 400;
   }
   
  private void drawArrow(int x1, int y1, int x2, int y2) { // 
    float a = dist(x1, y1, x2, y2) / 50;
    pushMatrix();
    translate(x2, y2);
    rotate(atan2(y2 - y1, x2 - x1));
    triangle(- a * 2 , - a, 0, 0, - a * 2, a);
    popMatrix();
    line(x1, y1, x2, y2);  
  }
  
  public void display() {
    drawArrow(x1,y1,x2,y2);
  }
}