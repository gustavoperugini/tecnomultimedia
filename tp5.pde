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




//Falta aplicar logica de estados. No supe resolver como hacer para que si me tocaba una piedra 
//tres veces volver a empezar y no supe como ponerle vidas.Me hubiese gustado que tenga un menu de inicio y una pantalla de game over
//Disculpas por el estado de la entrega,pero me costó bastante,espero resolverlo para el recuperatorio.
