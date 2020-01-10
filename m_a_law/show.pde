void use_line_on_damier(int cols, int rows,  int size, ArrayList<Boolean>list) {
  int y = -1;
  int x = 0;
  noStroke();
  for(int i = 0 ; i < list.size() ; i++) {
    x = i%cols;
    if(i%cols == 0) {
      y++;
    }
    if(list.get(i) == true) {
      fill(color(0,0,0));
    } else {
      fill(color(255,255,255));
    }
    square(x*size, y*size, size);  
  }
}

void use_line_on_window(int cols, int rows, ArrayList<Boolean>list) {
  int y = -1;
  int x = 0;
  for(int i = 0 ; i < list.size() ; i++) {
    x = i%cols;
    if(i%cols == 0) {
      y++;
    }
    if(list.get(i) == true) {
      int c = color(0,0,0);
      set(x,y,c);
    } else {
      int c = color(255,255,255);
      set(x,y,c);
    }
  }
}
