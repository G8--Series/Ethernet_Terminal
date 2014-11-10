import controlP5.*;
ControlP5 input, togg;
String textValue = "";
String S_tex;
public void Iin(int x, int y, int a, int l) {

  PFont font = createFont("arial", 20);

  input = new ControlP5(this);

  input.addTextfield("input")
    .setPosition(x, y)
      .setSize(a, l)
        .setFont(font)
          .setFocus(true)
            .setColor(color(255,255,255))
              ;

  textFont(font);

  toggle();
}

public void toggle() {

  smooth();
  togg = new ControlP5(this);

  // create a toggle and change the default look to a (on/off) switch look
  togg.addToggle("toggle")
    .setPosition(40, 250)
      .setSize(50, 20)
        .setValue(false)
          .setMode(ControlP5.SWITCH)
            ;
}

public void Drin() {
  //  text(input.get(Textfield.class,"input").getText(), 360,130);
  text(textValue, 400, 180);
}
public void input(String theText) {
  // automatically receives results from controller input
  //println("a textfield event for controller 'input' : "+theText);
  //println("como esta?");
 S_tex=theText;
  tx2=true;
}

void toggle(boolean theFlag) {
  if (theFlag==true) {
    col = color(255);
    tx1=theFlag;
  } else {
    col = color(100);
    tx1=theFlag;
  }
  //println("a toggle event.");
}
