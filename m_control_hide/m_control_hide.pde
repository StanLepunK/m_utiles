import controlP5.*;
ControlP5 bouton;

void setup() {
  size(400,400);
  bouton = new ControlP5(this);
  bouton.addButton("button").setPosition(10,10).setSize(100,20);
}

void draw() {
  background(0);
  if(keyPressed) {
    bouton.hide();
  } else {
    bouton.show();
  }
}
