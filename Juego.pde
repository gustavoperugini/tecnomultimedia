class Juego {
  String estado;
  Jugador jugador;
  int C  = 10;
  Piedras[]piedras= new Piedras[C];
  int c = 10;
  Naranja[] naranjas = new Naranja[c];

  Juego() {
    estado = "jugar";
    jugador = new Jugador( width/2, height/4*3, width/8 );
    for ( int i = 0; i < c; i++ ) {
      naranjas[i] = new Naranja( -100, i, true );
    }
    for ( int i = 0; i < C; i++ ) {
      piedras[i] = new Piedras( -100, i, true );
    }
  }
  // actualizar
  void actualizar() {
    // 
    if ( estado.equals( "jugar" ) ) {
      for ( int i = 0; i < c; i++ ) {  
        naranjas[i].actualizar();
        piedras[i].actualizar();
      }
      //Colision
      jugador.comer( naranjas );
      jugador.chocar(piedras);
    }
  }
  // dibujar()
  void dibujar() {
    //Estados
    if ( estado.equals( "perder" ) ) {
      background (0);
    }

    if ( estado.equals( "jugar" ) ) {
      jugador.dibujar();
      for ( int i = 0; i < c; i++ ) {  
        naranjas[i].dibujar( true );
        piedras[i].dibujar( true );
      }
    }
  }
  void teclas() {
    jugador.moverDer();
    jugador.moverIzq();
  }
}
