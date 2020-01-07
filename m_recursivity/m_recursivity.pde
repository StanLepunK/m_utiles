void setup() {
	recursion(10);
	println("");
}

void draw() {}

void keyPressed() {
	background(125);
	int n = (int)random(5,50);
	recursion(n);
	println("");
}

void recursion(int num) {
	num = num - 1;
	print(num,"");
	if(num > 0) {
		recursion(num);
	}
}

