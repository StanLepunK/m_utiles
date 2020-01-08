void setup() {
	size(640, 480);
  background(0);
  // list des polices disponibles
  printArray(PFont.list());
  // Create the font
  PFont f = createFont("ArialNarrow", 24);
  textFont(f);
  textAlign(CENTER, CENTER);
  text("Salut", width/2, height/2);
}