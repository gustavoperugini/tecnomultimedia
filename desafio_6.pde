poderes n ;  


PImage fondoplaneta;


void setup() {
  size( 1920, 1080 );
  background(#FFD1A2);
  n = new poderes( width/2, 400, 100 );
  fondoplaneta = loadImage( "fondoplaneta.png" );
  image (fondoplaneta, 0, 0);
}


void draw() {
  fill( #FFD1A2, 20 );
  rect( 0, 0, width, height );  
  tint(35, 35);
  image (fondoplaneta, 0, 0);
  textAlign(RIGHT);
  textSize(20);
  text("Gustavo Perugini\nTecnología Multimedial 1\nComisión 2", 1800, 830);

  //llamo
  n.mousemueve();
  n.dibujar();
}
