int ellipseSize = 130;
float x;
float y;
float a;
float b;
NumGen numGen;


void setup() {
  numGen = new NumGen();
  size(600, 600);
  background(#C1F2C6);
  x= 300;
  y= 500;
  a= 250;
  b= 510;


  textSize(32);
  fill(#050000);
}

void draw() {
  background(#F8FA8D);
  text("START", a, b);
  noFill();
  ellipse(x, y, ellipseSize, ellipseSize);
  numGen.draw();
}

void mousePressed() {

  if (dist(mouseX, mouseY, x, y) < ellipseSize/2) {
    println("Generating your numbers...");
    numGen.generateNewNumberSet();
    numGen.checkIfWon();
  }
}
