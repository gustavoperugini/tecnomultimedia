
class Piedras {
  //PROPIEDADES > variables
  float x, y;
  float tam;
  float vel;
  PImage imgpiedra;
  //CONSTRUCTOR > el "setup de la clase"
  //Naranja( float y_, int id ) {
  Piedras( float y_, int id, boolean inv ) {  //agrego parametro para decidir si quiero invertir o no
    //inicializar las variables
    x = random( -20, width );
    y = y_;
    tam = random( 40, 80 );
    vel = random( 3, 9 );

    //carga de las imagenes
    imgpiedra = loadImage( "piedra.png" );  
    //modificar el tamaño de las imágenes
    imgpiedra.resize( int(tam), int(tam) );
  }

  void actualizar() {
    y = y + vel;
    if ( y > height + tam/2 ) {
      reciclar();
    }
  }
  void dibujar( boolean conImagen ) {

    image( imgpiedra, x, y );
  }
  void reciclar() {
    x = random( width );
    y = -100;
    tam = random( 50, 100 );
    vel = random( 4, 6 );
  }
}
