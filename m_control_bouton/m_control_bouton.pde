import controlP5.*;
ControlP5 boutons;
boolean event_button_A;
boolean event_button_B;

void setup() {
  size(400,400);
  boutons = new ControlP5(this);
  boutons.addButton("button_A").setPosition(10,10).setSize(100,20).setValue(255);;
  boutons.addButton("button_B").setPosition(10,40).setSize(100,20);
}

void draw() {
  background(0);
  if(event_button_A == true) {
    event_button_A = false;
    println("reset button A",frameCount);
  }
  
  if(event_button_B == true) {
    event_button_B = false;
    println("reset button B",frameCount);
  }
}


void button_A(int arg) {
  println("frameCount",frameCount);
  println("button A: get value", arg);
  event_button_A = true;
}

void button_B(int arg) {
  println("frameCount",frameCount);
  println("button B: get value", arg);
  event_button_B = true;
}
