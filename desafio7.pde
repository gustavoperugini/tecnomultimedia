ellipse n ;  
float ellipseX;
float ellipseY;
float ellipseTam;

void setup () {
  size (1080, 1080);
  frameRate(50);
  n = new ellipse( width/2, 400, 100 );
}
void draw() {
  background (#FAAD86);
  noStroke();

  n.dibujar();
}
