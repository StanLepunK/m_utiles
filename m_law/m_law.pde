/**
* simple law inspired by the automata cellular idea
* https://fr.wikipedia.org/wiki/Automate_cellulaire
*/
ArrayList<Boolean>list = new ArrayList<Boolean>();
void setup() {
	size(200,200);
	
	list.add(true);
	list.add(true);
	list.add(false);
	build(width,height,2);
	// use_line_on_window(width,height, list);
	int cols = 40;
	int rows = 40;
	int cell_size = 5;
	use_line_on_damier(cols, rows, cell_size, list);
}


void build(int cols, int rows, int law) {
	int len = cols * rows;
	int index = list.size();
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
			default:
				result = law_a(list);
				break;
		}
		list.add(result);
		index++;
	}
}


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

boolean law_a(ArrayList<Boolean>list) {
	boolean next = false;
	int min_to_start = 2;
	if(list.size() >= min_to_start) {
		boolean me = list.get(list.size() -1);
		boolean previous = list.get(list.size() -2);
		// the law
		if(previous == false) {
			next = true;
		} else {
			next = false;
		}
	} else if(list.size() < min_to_start) {
		println("the list need",min_to_start,"elements to start");
	}
	return next;
}

boolean law_b(ArrayList<Boolean>list) {
	boolean next = false;
	int min_to_start = 2;
	if(list.size() >= min_to_start) {
		boolean me = list.get(list.size() -1);
		boolean previous = list.get(list.size() -2);
		// the law
		if(previous == false && me == false) {
			next = true;
		} else {
			next = false;
		}
	} else if(list.size() < min_to_start) {
		println("the list need",min_to_start,"elements to start");
	}
	return next;
}



boolean law_c(ArrayList<Boolean>list) {
	boolean next = false;
	boolean [] previous = new boolean[2];
	int min_to_start = 3;
	if(list.size() >= min_to_start) {
		boolean me = list.get(list.size() -1);

		previous[0] = list.get(list.size() -2);
		previous[1] = list.get(list.size() -3);
		// the law
		if(previous[0] == false && previous[1] == false) {
			next = false;
		} else if(previous[0] == false && previous[1] == true) {
			next = true;
		} else if(previous[0] == true && previous[1] == true) {
			next = false;
		} else {
			next = true;
		}
	} else if(list.size() < min_to_start) {
		println("the list need",min_to_start,"elements to start");
	}
	return next;
}
