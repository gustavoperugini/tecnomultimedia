class Juego {
  String estado;
  Jugador jugador;
  int c = 10; 
  Piedras[] piedras= new Piedras[c];
  Naranja[] naranjas = new Naranja[c];

  //CONSTRUCTOR
  Juego() {
    estado = "jugar";
    jugador = new Jugador( width/2, height/4*3, width/8 );
    for ( int i = 0; i < naranjas.length; i++ ) {
      naranjas[i] = new Naranja( -100, i, true );
    }
    for ( int i = 0; i < piedras.length; i++ ) {
      piedras[i] = new Piedras( -100, i, true );
    }
  }

  //-----------METODOS-----------
  //Dibujar
  void dibujar() {
    //ESTADO = PERDER
    if ( estado.equals( "perder") ) {
      background (0);
      textSize(30);
      fill(#FFE921);
      text("Pulsa (espacio) para reiniciar", 80, 300);
    }
    //ESTADO = JUGAR
    if ( estado.equals( "jugar" ) ) {
      jugador.dibujar();
      for ( int i = 0; i < c; i++ ) {  
        naranjas[i].dibujar( true );
        piedras[i].dibujar( true );
      }
    }
  }

  //Actualizar
  void actualizar() {
    // 
    if ( estado.equals( "jugar" ) ) {
      for ( int i = 0; i < piedras.length; i++ ) {  
        piedras[i].actualizar();
      }
      for ( int i = 0; i < naranjas.length; i++ ) {  
        naranjas[i].actualizar();
      }
      //Colisiones
      jugador.comer( naranjas );
      jugador.chocar(piedras);
    }
  }

  //------------METEDOS PARA LAS TECLAS----------------  
  void teclas() {
    jugador.moverDer();
    jugador.moverIzq();
    jugador.teclaEspacio(width/2, width/8);
    //REINICIAR al presionar ESPACIO
    if ( key == ' ' ) {  
      if ( estado == "perder" ) {
        estado = "jugar";
      }
    }
  }
}
