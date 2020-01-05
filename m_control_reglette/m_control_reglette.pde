import controlP5.*;
ControlP5 reglettes;
ControlP5 boutons;

void setup() {
  size(400,400);
  reglettes = new ControlP5(this);
  reglettes.addSlider("super reglette A").setPosition(10,10).setSize(100,10).setRange(0,100);
  reglettes.addSlider("super reglette B").setPosition(10,40).setSize(200,20).setRange(0,100);
  
  //boutons
}

void draw() {
  background(0);
}

void controlEvent(ControlEvent theEvent) {
  println("frameCount",frameCount);
  println(theEvent.getController().getName());
  println(theEvent.getController().getValue());
}
