ArrayList<Boolean>list = new ArrayList<Boolean>();
void build(int cols, int rows, int law) {
  int len = cols * rows;
  int index = list.size();
  list.clear();
  set_first_elements(4);
  boolean result = false;
  while(index < len) {
    switch(law) {
      case 0:
        result = law_a(list);
        break;
      case 1:
        result = law_b(list);
        break;
      case 2:
        result = law_c(list);
        break;
      case 3:
        result = law_d(list);
        break;
      default:
        result = law_a(list);
        break;
    }
    list.add(result);
    index++;
  }
}

void set_first_elements(int num) {
  for(int i = 0 ; i < num ; i++) {
    boolean value = false;
    if(random(1) < 0.5) {
      value = true;
    }
    list.add(value);
  }
}
