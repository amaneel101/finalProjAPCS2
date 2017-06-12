import java.lang.UnsupportedOperationException;

class Text_field extends Component {
  String b;
  int xNow;
  int yNow;
  boolean overComp = false;
  boolean locked = false;
  Textfield field;


  String fontStyle = "Serif";
  int fontSize = 12;
  
  PFont font = createFont(fontStyle, fontSize);

  Text_field(String b) {
    this.b = b;

    //xNow = random(200,300);
    //yNow = random(200,300);

    xNow = 300;
    yNow = 300;

    //ctrl.addTextfield("tbox" + str(numTextBoxes))
    ctrl.addTextfield(b)
      .setPosition(xNow, yNow)
      .setSize(90, 50)
      .setColorForeground(0xff000000)
      .setColorBackground(0xff000000)
      .setColorActive(0xff000000)
      .setFont(font);
  }

  Text_field(String str, int num) {
    b = str;
    xNow = num;
    yNow = num;

    //ctrl.addTextfield("tbox" + str(numTextBoxes))
    ctrl.addTextfield(b)
      .setPosition(xNow, yNow)
      .setSize(90, 50)
      .setColorForeground(0xff000000)
      .setColorBackground(0xff000000)
      .setColorActive(0xff000000)
      .setFont(font);
  }
  public void display() {
    //throw new UnsupportedOperationException();
    //PFont font = createFont(fontStyle, fontSize);
    ////String name = b;
    ////System.out.println(b);

    font = createFont(fontStyle, fontSize);

    ctrl.get(Textfield.class,b).setPosition(xNow, yNow)
      //.setSize(90,50)
      //.setColorForeground(0xff000000)
      //.setColorBackground(0xff000000)
      //.setColorActive(0xff000000)
      .setFont(font);
  }

  //public void display(Textfield field) {
  //         field.setPosition(xNow, yNow)
  //             .setSize(90,50)
  //             .setColorForeground(0xff000000)
  //             .setColorBackground(0xff000000)
  //             .setColorActive(0xff000000)
  //             .setFont(font);

//}

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

public void changeOver(boolean bool) {
  super.changeOver(bool);
}
public void changeLocked(boolean bool) {
  super.changeLocked(bool);
}

public boolean getLocked() {
  return super.getLocked();
}

public boolean getOverComp() {
  return super.getOverComp();
}

public void setFont(String style, int size) {
  fontStyle = style;
  fontSize = size;
}

}