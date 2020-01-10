/**
* application of recursivity method
*/
void setup() {
	size(500,500);
	background(0);
	show_tree();
}

void draw() {
}

void keyPressed() {
	background(0);
	show_tree();
}

void show_tree() {
	float radius = random(width/4,width/2);
	int num = (int)random(5,14);
	float angle = random(QUARTER_PI/4,PI) /num;
	float size = 5;
	println("new tree with n",num,"recursion");
	println("branch angle",angle);

	push();
	translate(width/2,height - height/3);
	rotate(-HALF_PI);
	recursion(num, radius, angle, size);
	pop();
}


int max = 0;
boolean start_tree = false;
void recursion(int num, float radius, float angle, float size) {
	if(start_tree == false) {
		max = num;
		start_tree = true;
	}
	float step = radius / max;
	num = num - 1;
	int reverse = max - num;
	float dist = reverse * step;
	angle *= reverse;
	forme(dist, angle, size);
	if(num > 0) {
		float initial_angle = angle / reverse;
		recursion(num, radius, initial_angle, size);
		recursion(num, radius, -initial_angle, size);
	} else {
		start_tree = false;
	}
}

void forme(float distance, float angle, float size) {
  float x = distance;
  float y = 0;
	push();
	rotate(angle);
	translate(x,y);
	ellipse(0,0,size,size);
	pop();
}