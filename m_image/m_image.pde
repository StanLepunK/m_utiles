PImage img;
void setup() {
	size(200,200);
	img = loadImage("dame_hermine.jpg");
	surface.setSize(img.width,img.height);
}

void draw() {
	image(img,0,0);
	img.loadPixels();
	// int target =  (int)random(img.pixels.length);
	// int c = img.pixels[target];
		// println(target,red(c),green(c),blue(c));
	// println(target,hue(c),saturation(c),brightness(c), alpha(c));
	int c = img.get(mouseX,mouseY);

	fill(c);
	ellipse(mouseX,mouseY,50,50);
	//	printArray(img.pixels);
}
