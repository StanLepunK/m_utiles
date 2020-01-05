void setup() {
	size(300,300);
}

void draw() {

}

void keyPressed() {
	background(0);
	fill(random(255),random(255),random(255));
	noStroke();
	ellipse(random(width),random(height),50,50);
	if(key == '1') {
		saveFrame("image_##.jpg");
	}

	if(key == '2') {
		saveFrame("image_##.tif");
	}

	if(key == '3') {
		saveFrame("image_##.png");
	}
}
