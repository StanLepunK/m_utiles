void setup() {
	size(300,300);
	background(0);
	String [] str = loadStrings("texte.txt");
	printArray(str);
  
  println("");
	String [] lettres = str[0].split("");
	printArray(lettres);
	println("");
	String [] mots = str[1].split(" ");
	printArray(mots);
}


