import g4p_controls.GImageButton;
boolean tx1= false;
boolean tx2= false;

public void setup() {
  size(700, 550, JAVA2D);
 I_Tx_Rx();
  Iin(20, 100, 200, 40);
  Iconsola(280, 40, 400, 480);
  create_logo(50,350,150,150);
}

public void draw() {
  background(0, 98, 125);
  Drin();
  if(tx1==true &tx2==true ){
   D_tx("192.168.1.177",8888,S_tex);
  }
}

public void create_logo(int x, int y, int ancho, int largo) {
  Electro_Logo=  new GImageButton(this, x, y, ancho, largo, new String[] { 
    "Logo G8.png"
  } 
  );
}
void keyPressed() {
  switch(key) {
    case('1'):
    console.pause();
    break;
    case('2'):
    console.play();
    break;
    case('3'):
    console.setMax(8);
    break;
    case('4'):
    console.setMax(-1);
    break;
    case('5'):
    console.clear();
    break;
  }
}

GImageButton Electro_Logo;
