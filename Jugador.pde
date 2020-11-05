class Jugador {
  //Variables
  float x, y;
  float t;
  int tam;
  PImage player;

  // Constructor
  Jugador( float x_, float y_, float t_ ) {
    // inicializo las propiedades
    x = x_;
    y = y_ ;
    t = t_;
    tam = 80;
  }
  void dibujar() {
    player = loadImage( "flik.png" );
    player.resize(tam, tam);
    image(player, x, y);
  }

  void comer( Naranja[] na ) {
    //recorro el arreglo de naranjas con un ciclo for
    for ( int i = 0; i < na.length; i++ ) {
      //DECLARAR una DISTANCIA para generar una COLISION
      float d = dist( x, y-t/10, na[i].x, na[i].y );
      //EVALUAR la DISTANCIA hacia el OBJETO
      if ( d < t/5 ) {
        t += na[i].tam;
        tam = tam+10;
        na[i].reciclar();
      }
    }
  }


  void chocar( Piedras[] pie) {
    //Recorro el arreglo de naranjas con un ciclo for
    for ( int i = 0; i < pie.length; i++ ) {
      //DECLARAR una DISTANCIA para generar una COLISION
      float d = dist( x, y-t/10, pie[i].x, pie[i].y );
      //EVALUAR la DISTANCIA hacia el OBJETO
      if ( d < t/5 ) {  
        t += pie[i].tam;  
        pie[i].reciclar();
        juego.estado = "perder";
      }
    }
  }
  //----------------------------------------- Metodos para el KeyPressed -----------------------------------------
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
  void teclaEspacio(float x_, float t_) {
    if ( key == ' ' ) {
      x = x_;
      t = t_;
      juego.estado = "jugar";
    }
  }
}
