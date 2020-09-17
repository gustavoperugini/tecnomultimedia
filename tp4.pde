import ddf.minim.*;
//variable sonido
Minim minim;
AudioPlayer song;
String[] textos = new String[10];  
PFont mifuente;
PFont mifuentedos;
PImage flik;
PImage miMenu;
PImage Creaarmas;
PImage enemigos;
PImage frutos;
PImage ciudad;
PImage circo;
PImage malos;
PImage malos2;
PImage malos3;
PImage malos4;
PImage malosganan;
PImage salvacion;
PImage grupoend;
int estado;
float titulocred;
int posText;
void setup() {
  size( 1024, 768 );
  textSize( 30 );
  textAlign( CENTER );
  mifuente= loadFont("ArialNarrow-Bold-48.vlw"); 
  mifuentedos= loadFont("ArialNarrow-48.vlw");  
  titulocred = -40;
  posText = 120;
  //----------!!!!!!
  estado = 0;
  //minim
  minim= new Minim (this);
  song = minim. loadFile("song.mp3");
  //Textos
  textos[0]="Tecnología 1 \n Facultad de Bellas Artes \n Comisión 2 Docente: Matias Jauregui Lorda"; 
  textos[1]="Flick vive en una colonia de hormigas que, tras el invierno, es asaltada por un grupo de saltamontes \n Éstos cada año acuden al hormiguero y se llevan parte de la comida que recogen de cara a la época de frío \n como parte de un trato muy antiguo y que las hormigas, por miedo, a la otra parte, no se permiten transgredir \n Para ello emplearan todo tipo de recursos para defender la colonia y derrotar al enemigo.  ";
  textos[2]="O pulsa (x) para decidir de que lado dar la batalla final \n (NO ES RECOMENDABLE,PRIMERO DEBES ALIMENTARTE) \n Pulsa (m) para continuar a recolectar frutos ";
  textos[3]="Ahora estás de nuestro lado, haremos lo posible por arruinar la colonia\nllevamos largo tiempo tratando de hundir a nuestro enemigo \n pero Flik y su colonia siempre se salen con la suya \n veremos si esta vez podrán escaparse de nuestras manos   ";
  textos[4]="Empezemos con esto, vayamos camino a la colonia para darles el primer \n escarmiento a este grupo de inservibles buenos para nada \n para dejarles en claro quien manda en estas tierras. ";
  textos[5]="He reunido a todo mi ejército para iniciar esta misión \n juntos venceremos, robaremos su comida y luego podremos \n seguir conquistando terrenos para nuestro reinado. ";
  textos[6]="Otra vez! se han logrado escapar \nmaldita sea! debemos planear un próximo ataque";
  textos[7]="Según lo jugado hasta el momento ¿por qué equipo te inclinarías? \n-La colonia de Flik y sus amigos buscan una vida en paz para poder progesar con su hogar. \n-Los saltamontes planean irrumpir esa paz destruyendo todo a su paso. ";
  textos[8]= "EL DESTINO ESTÁ EN TUS MANOS, QUE DECIDES HACER?. \n Pulsa (q) para jugar del lado de la colonia de Flik. \n Pulsa (w) para jugar del lado de los saltamontes. ";
  textos[9]="Créditos \n Aventura gráfica realizada por Gustavo Javier Perugini\n Todos los derechos pertenecientes a las personas o entidades que correspondan";
}
void draw() {
  //-----------------------------------------------pantallas 
  if  ( estado == 0 ) {
    //0.INTRO
    song.loop();
    background( 0 ); 
    textAlign(CENTER);
    textSize(35);
    fill( titulocred );
    text(textos[0], 512, posText+50);
    //titulocreditos
    textSize(25);
    fill(titulocred);
    titulocred += 20.9;
    posText = 120;
    fill(#FFD21A);
    text("Pulsa (espacio) para conocer la historia", 512, 690);
    //--------------------------------------------------------
  } else if ( estado == 1 ) {
    //1.HISTORIA
    background( #009AFF);
    textSize(18);
    text(textos[1], 512, posText+140);
    fill( titulocred );
    textSize(25);
    fill(#FFD21A);
    text("Pulsa (espacio)", 512, 690);
    //--------------------------------------------------------
  } else if ( estado == 2 ) {
    //MENU
    background( #009AFF );
    fill( 255 );
    tint(255, 74);
    miMenu = loadImage( "0.png" );
    miMenu.resize(1024, 768);
    image (miMenu, 0, 0);   
    fill(255);
    textFont(mifuentedos);
    textSize(40);
    text("Pulsa (espacio) para iniciar la aventura", 512, 506);
    fill(#FFD21A);
    textFont(mifuente);
    textSize(150);
    text("Bichos", 512, 340);
    //--------------------------------------------------
    //ARMAS
  } else if ( estado ==3) {  
    background( #009AFF );
    fill( 255 );
    textSize(35);
    text( "Creando armas de combate...", 512, 70 );
    fill(#FFD21A);
    textSize(25);
    text(textos[2], 512, 530);
    fill(#FF0A0A);
    textSize(24);
    text("PULSA (0) PARA VIVIR ESTA HISTORIA DEL LADO DE LOS MALOS", 512, 630);
    tint(255, 255);
    Creaarmas = loadImage( "1.png" );
    image(Creaarmas, 275, 190);
    //-------------------------------------------------------- 
    //bienvenido malos
  } else if ( estado ==4) {  
    background( #009AFF );
    fill(#FF3131 );
    textSize(50);
    text( "Bienvenido", 512, 200 );
    fill( 255 );
    textSize(25);
    text( textos[3], 512, 300 );
    textSize(30);
    fill(#FFD21A);
    text( "Pulsa (6) para intimidar al enemigo", 512, 550);
    //--------------------------------------------------------
    //intimidar a la colonia
  } else if ( estado ==5) {  
    background( #009AFF );
    malos3 = loadImage( "2.png" );
    malos3.resize(1040, 800);
    image(malos3, 0, 0);
    fill(#FFD21A);
    textSize(22);
    text( textos[4], 512, 30 );
    textSize(25);
    text( "Pulsa (7) para iniciar el saqueo a la colonia.", 512, 740 );
    //--------------------------------------------------------
    //iniciar saqueo a la colonia
  } else if ( estado ==6) {  
    background( #009AFF );
    malos4 = loadImage( "3.png" );
    malos4.resize(1040, 800);
    image(malos4, 0, 0);
    textSize(22);
    fill(#FFD21A);
    text(textos[5], 512, 30 );
    textSize(25);
    text( "Pulsa (8) para averiguar lo sucedido.", 512, 740 );
    //--------------------------------------------------------
    //salvación
  } else if ( estado ==7) {  
    background( #009AFF );
    salvacion = loadImage( "4.png" );
    image(salvacion, 0, 80);
    fill( 255 );
    textSize(25);
    text(  textos[6], 512, 35 );
    fill(#FFD21A);
    text( "Pulsa (9) para seguir.", 512, 650 );
    //--------------------------------------------------------
    //FRUTOS
  } else if ( estado ==8) {  
    background( #009AFF );
    fill( 255 );
    textSize(35);
    text( "Recolectando frutos...", 512, 70 );
    textSize(25);
    fill(#FFD21A);
    text("Ahora te alimentaste pulsa (v) para pasear por la ciudad", 512, 690);
    tint(255, 255);
    frutos = loadImage( "5.png" );
    image(frutos, 210, 185);
    //--------------------------------------------------------
    //CIUDAD
  } else if ( estado ==9) {  
    background( #009AFF );
    fill( 255 );
    textSize(35);
    text( "Paseando por la ciudad...", 512, 70 );
    textSize(25);
    fill(#FFD21A);
    text("Pulsa (k) los saltamontes te atacan, regresa a salvar tu colonia!", 512, 690);
    tint(255, 255);
    ciudad = loadImage( "6.png" );
    ciudad.resize(600, 300);  
    image(ciudad, 240, 205);
    //--------------------------------------------------------
    //FINAL ALTERNATIVO
  } else if ( estado ==10) {  
    background( #009AFF );
    fill( 255 );
    textSize(35);
    text( "DEBES ELEGIR DE QUE LADO ESTARÁS EN ESTA BATALLA FINAL", 512, 95 );
    textSize(25);
    text(textos[7], 512, 350 );
    fill(#FFD21A);
    textSize(25);
    text(textos[8], 512, 600 );
    //--------------------------------------------------------
    //ENEMIGOS
  } else if ( estado ==11) {  
    background( #009AFF );
    fill( 255 );
    textSize(35);
    text( "En combate con el enemigo...", 512, 70 );
    textSize(25);
    fill(#FFD21A);
    text("Pulsa (l) para festejar en el circo", 512, 690);
    fill(255);
    textSize(20);
    text("Ganaste! tu colonia ha vencido al ejército enemigo!", 512, 615);
    tint(255, 255);
    enemigos = loadImage( "7.png" );
    enemigos.resize(600, 300);
    image(enemigos, 220, 205);
    //--------------------------------------------------------
    //CIRCO
  } else if ( estado ==12) {  
    background( #009AFF );
    fill( 255 );
    textSize(35);
    text( "Festejando en el circo...", 512, 70);
    textSize(25);
    fill(#FFD21A);
    tint(255, 255);
    text("FIN", 512, 600);
    text("Pulsa (j) para ir a los créditos", 512, 690);
    circo = loadImage( "8.png" );
    image(circo, 180, 205);
    //--------------------------------------------------------
    //CREDITOS
  } else if ( estado ==13) {  
    background( #009AFF);
    textSize(35);
    fill( titulocred );
    textSize(35);
    text("Bichos: Una aventura en miniatura", 512, posText+100);
    //titulocreditos
    textSize(25);
    text(textos[9], 512, posText+220 );
    fill(#FFD21A);
    text("Pulsa (z) para volver al inicio", 512, 690);
    textSize(15);
    titulocred += 35.9;
    posText = 120;
    grupoend = loadImage( "9.png" );
    grupoend.resize(600, 300);  
    tint(255, 55);
    image(grupoend, 230, 180);
    //--------------------------------------------------------
    //ENEMIGOS
  } else if ( estado ==14) {  
    background( #009AFF );
    fill( 255 );
    textSize(35);
    text( "La colonia ha quedado destruida, es hora de festejar!", 512, 70 );
    textSize(25);
    fill(#FFD21A);
    text("Pulsa (b) para volver a jugar", 512, 690);
    malosganan = loadImage( "10.png" );
    image(malosganan, 180, 180);
  }
  //--------------------------------------------------------
}
void keyPressed() {
  //
  if ( key == ' ' )if ( estado == 2 ) 
    estado = estado + 1;
  //
  if ( key == ' ' )if ( estado == 1 ) 
    estado = estado + 1;
  //
  if ( key == ' ' )if ( estado == 0 ) 
    estado = estado + 1;
  //
  if ( key == '0' )if ( estado == 3 )
    estado = estado + 1;
  //
  if ( key == 'a' )if ( estado == 3 )
    estado = estado + 6 ;
  //////////
  if ( key == 'j' ) if ( estado ==12) 
    estado = estado + 1;
  ///
  if ( key == 'k' ) if ( estado ==9) 
    estado = estado + 1;
  //
  if ( key == 'b' ) if ( estado == 14 )
    estado = estado +2 ;
  //
  if ( key == 'v' )if ( estado ==8) 
    estado = estado + 1 ;
  //
  if ( key == 'l' )if ( estado ==11) 
    estado = estado + 1 ;
  //
  if ( key == 'c' )if ( estado == 3 )
    estado = estado + 8;
  //
  if ( key == 'm' )if ( estado ==3)
    estado = estado + 5;
  //
  if ( key == 'x' )if ( estado ==3)
    estado = estado+7;
  //
  if ( key == 'd' )if ( estado == 3 )
    estado = estado + 9;
  //
  if ( key == 'e' )if ( estado == 3 )
    estado = estado + 10;
  //
  if ( key == '3' )if ( estado == 4 )
    estado = estado +1;
  //
  if ( key == '4' )if ( estado == 4 )
    estado = estado +2;
  //
  if ( key == '5' )if ( estado == 4 )
    estado = estado +3;
  //
  if ( key == '6' )if ( estado ==4)
    estado = estado +1;
  //
  if ( key == '7' )if ( estado ==5)
    estado = estado +1;
  //
  if ( key == '8' )if ( estado ==6)
    estado = estado +1;
  //
  if ( key == '9' )if ( estado ==7)
    estado = 3;

  if ( key == 'q' ) if  ( estado == 10 ) 
    estado = estado + 1;
  if ( key == 'w' ) if  ( estado == 10 ) 
    estado = estado + 4;
  //RESTART
  if ( key == 'z' )
    estado = estado +3;
  // REINICIO
  if ( estado == 16 )
    estado = 2;
  //IMPRIMO VALOR
  println( "estado: " + estado );
}
