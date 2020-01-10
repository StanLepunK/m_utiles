/**
* simple law inspired by the automata cellular idea
* https://fr.wikipedia.org/wiki/Automate_cellulaire
*/
void setup() {
	size(200,200);
	build(width,height,3);
}

void draw() {
  if(mousePressed) {
    use_line_on_window(width,height, list);
  } else {
    int cols = 20;
    int rows = 20;
    int cell_size = 10;
    use_line_on_damier(cols, rows, cell_size, list);
  }
}

void keyPressed() {
  if(key == '1') {
    println("build with LAW A");
    build(width,height,0);
  }
  
  if(key == '2') {
    println("build with LAW B");
    build(width,height,1);
  }
  
  if(key == '3') {
    println("build with LAW C");
    build(width,height,2);
  }
  
  if(key == '4') {
    println("build with LAW D");
    build(width,height,3);
  }
}
