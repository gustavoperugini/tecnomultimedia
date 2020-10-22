class Naranja {
  //PROPIEDADES > variables
  float x, y;
  float tam;
  float vel;
  PImage imagen;
  //CONSTRUCTOR > el "setup de la clase"
  //Naranja( float y_, int id ) {
  Naranja( float y_, int id, boolean inv ) {  //agrego parametro para decidir si quiero invertir o no
    //inicializar las variables
    x = random( -40, width );
    y = y_;
    tam = random( 40, 80 );
    vel = random( 1, 3 );
    //carga de las imagenes
    imagen = loadImage( "naranja.png" ); 
    //modificar el tamaño de las imágenes
    imagen.resize( int(tam), int(tam) );
  }
  void actualizar() {
    y = y + vel;
    if ( y > height + tam/2 ) {
      reciclar();
    }
  }
  void dibujar( boolean conImagen ) {
    image( imagen, x, y );
  }
  void reciclar() {
    x = random( width );
    y = -100;
    tam = random( 40, 80 );
    vel = random( 1, 3 );
  }
}
