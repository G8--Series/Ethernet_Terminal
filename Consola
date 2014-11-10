import controlP5.*;

ControlP5 con;
Textarea myTextarea;
int c = 0;
Println console;

void Iconsola(int x,int y,int a,int l){
    con = new ControlP5(this);
  con.enableShortcuts();
  frameRate(50);
  myTextarea = con.addTextarea("txt")
                  .setPosition(x, y)
                  .setSize(a, l)
                  .setFont(createFont("", 15))
                  .setLineHeight(20)
                  .setColor(color(5, 230, 252))
                  .setColorBackground(color(0, 200))
                  .setColorForeground(color(255, 100));
  ;

  console = con.addConsole(myTextarea);//
}
