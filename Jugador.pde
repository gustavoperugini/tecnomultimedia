PImage player;
class Jugador {
  //Variables
  float x, y;
  float t;
  // Constructor
  Jugador( float x_, float y_, float t_ ) {
    // inicializo las propiedades
    x = x_;
    y = y_ ;
    t = t_;
  }
  void dibujar() {
    player = loadImage( "flik.png" );
    player.resize(80, 80);
    image(player, x, y);
  }
  //-----------------------------------------
  // Metodos KeyPressed()
  void moverIzq() {
    if ( keyCode == LEFT )
      //x -= t;
      x -= 20;
  }

  void moverDer() {
    if ( keyCode == RIGHT )
      //x += t;
      x += 20;
  }
  //-----------------------------------------


  void comer( Naranja[] na ) {
    //recorro el arreglo de naranjas con un ciclo for
    for ( int i = 0; i < na.length; i++ ) {
      //distancias
      float d = dist( x, y-t/10, na[i].x, na[i].y );

      if ( d < t/5 ) {  
        t += na[i].tam;  
        na[i].reciclar();
      }
    }
  }


  void chocar( Piedras[] pie) {
    //recorro el arreglo de naranjas con un ciclo for
    for ( int i = 0; i < pie.length; i++ ) {
      //distancias
      float d = dist( x, y-t/10, pie[i].x, pie[i].y );

      if ( d < t/5 ) {  
        t += pie[i].tam;  
        pie[i].reciclar();
        background (0);
      }
    }
  }
}
