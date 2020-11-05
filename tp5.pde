PImage Fondo;
Juego juego;  
void setup() {
  size( 600, 600 );
  juego = new Juego();
}
void draw() {
  background( #5CADC6 );
  Fondo = loadImage( "fondo.jpg" );
  image(Fondo, 0, 0);
  //Metodos de Juego
  juego.actualizar();
  juego.dibujar();
}
void keyPressed() {
  juego.teclas();
}
void mousePressed() {
}
