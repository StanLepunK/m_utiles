PImage img;
void setup() {
	size(200,200);
	img = loadImage("dame_hermine.jpg");
	surface.setSize(img.width,img.height);
}

void draw() {
	image(img,0,0);
}