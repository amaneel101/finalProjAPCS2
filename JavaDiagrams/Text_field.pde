class Text_field{
  String b;
  Text_field(String b){
    this.b = b;
  }
  public void display(){
    ctrl.addTextfield("box" + str(numTextBoxes))
      .setPosition(random(200,300),random(200,300))
      .setSize(90,50)
      .setColorForeground(0xff000000)
      .setColorBackground(0xff000000)
      .setColorActive(0xff000000);
  }
}