/**
* simple law inspired by the automata cellular idea
* https://fr.wikipedia.org/wiki/Automate_cellulaire
*/
void setup() {
	size(200,200);
	build(width,height,2);
}

void draw() {
  if(mousePressed) {
    use_line_on_window(width,height, list);
  } else {
    int cols = 40;
    int rows = 40;
    int cell_size = 5;
    use_line_on_damier(cols, rows, cell_size, list);
  }
}

void keyPressed() {
  if(key == '1') {
    build(width,height,0);
  }
  
  if(key == '2') {
    build(width,height,1);
  }
  
  if(key == '3') {
    build(width,height,2);
  }
}
