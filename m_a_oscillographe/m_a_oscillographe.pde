void setup() {
  size(800,300,P2D);
  background(0);
}

float speed_x = 0.1;
float speed_y = 0.5;
float speed_oscillo = 0.1;
float x = 0;
float y = 0;
void draw() {
  // background(0);
  x += speed_x;
  if(x > width || x < 0) {
    speed_x *= -1;
  }
  y += speed_y;
  if(y > height || y < 0) {
    speed_y *= -1;
  }
  stroke(255);
  strokeWeight(0.5);
  // line(x,0,x,height);
  // line(0,y,width,y);
  noStroke();
  fill(100);
  ellipse(x,y,1,1);
  
  
  float radius = height/4;
  float px = sin(x * speed_oscillo) * radius;
  float py = cos(y * speed_oscillo) * radius;
  noStroke();
  fill(255,0,0);
  push();
  translate(width/2,height/2);
  ellipse(px,py,2,2);
  pop(); 
}

void keyPressed() {
  background(0);
  speed_x = random(2);
  speed_y = random(2);
  speed_oscillo = random(1);
  speed_oscillo *= speed_oscillo;
  println("speed x",speed_x);
  println("speed y",speed_y);
  println("speed oscillo",speed_oscillo);
}
