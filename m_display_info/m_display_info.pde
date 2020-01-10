String message = "";
void setup() {
  size(300,300);
}
void draw() {
  background(0);
  textAlign(CENTER,CENTER);
  if(display_info) {
    text(message,width/2,height/2);
  }
}

boolean display_info;
void keyPressed() {
  if(key == 'n') {
    message = "du nouveau ?";
    println(message,frameCount);
  }
  
  if(key == 'N') {
    message = "DU NOUVEAU ?";
    println(message,frameCount);
  }
  
  if(key == 'i') {
    display_info = !display_info;
  }
}
