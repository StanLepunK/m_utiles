PVector [] list;
void setup() {
	size(300,300);
	int sommets = 5;
	float taille = 30;
	list = polygon(sommets, taille);
}

void draw() {
	background(0);
	push();
	translate(mouseX, mouseY);
	for(int i = 0 ; i < list.length ; i++) {
		ellipse(list[i].x, list[i].y, 10, 10);
	}
	pop();
}

PVector [] polygon(int num, float radius) {
	PVector [] pts = new PVector[num];
	float angle = TAU / num;
	int index = 0;
	// set summits
	while(index < num) {
		float temp_angle = angle * index;
		float x = cos(temp_angle);
		float y = sin(temp_angle);
		pts[index] = new PVector(x,y);
		pts[index].mult(radius);
		index++;
	}
	return pts;
}