PFont mifuente;
PFont mifuentedos;
PImage flik;
PImage miMenu;
PImage Creaarmas;
PImage enemigos;
PImage frutos;
PImage ciudad;
PImage circo;
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

}

void draw() {
  //-----------------------------------------------pantallas 
  if  ( estado == 0 ) {
    //0.INTRO
    background( 0 ); 
    textAlign(CENTER);
    textSize(35);
    fill( titulocred );
    text( "Tecnología 1", 512, posText+50 );
    fill( titulocred);
    textSize(35);
    text("Facultad de Bellas Artes", 512, posText+120);
    textSize(25);
    fill(#FFD21A);
    //titulocreditos
    textSize(25);
    fill(titulocred);

    text("Comisión 2 Docente: Matias Jauregui Lorda ", 512, posText+190 );
    titulocred += 20.9;
    posText = 120;
    fill(#FFD21A);
    text("Pulsa (1) para conocer la historia", 512, 690);

    //--------------------------------------------------------
  } else if ( estado == 1 ) {
    //1.HISTORIA
    background( #009AFF);
    textAlign(CENTER);
    textSize(18);
    fill( titulocred );
    text( "Flick vive en una colonia de hormigas que, tras el invierno, es asaltada por un grupo de saltamontes", 512, posText+140 );
    text( "Éstos cada año acuden al hormiguero y se llevan parte de la comida que recogen de cara a la época de frío", 512, posText+170 );
    text( "como parte de un trato muy antiguo y que las hormigas, por miedo, a la otra parte, no se permiten transgredir.", 512, posText+200 );
    text( "Para ello emplearan todo tipo de recursos para defender la colonia y derrotar al enemigo.", 512, posText+230 );
    textSize(25);
    fill(#FFD21A);
    text("Pulsa (2)", 512, 690);
    //--------------------------------------------------------
  } else if ( estado == 2 ) {
    //MENU
    background( #009AFF );
    fill( 255 );
    tint(255, 74);
    miMenu = loadImage( "menu.jpg" );
    miMenu.resize(1024, 768);
    image (miMenu, 0, 0);   
    textAlign(CENTER);
    fill(255);
    textFont(mifuentedos);
    textSize(40);
    text("Pulse (espacio) para iniciar la aventura", 512, 506);

    fill(#FFD21A);
    textFont(mifuente);
    textSize(150);
    text("Bichos", 512, 340);
    //--------------------------------------------------------
  } else if ( estado == 3 ) {
    //OPCIONES
    background( #009AFF ); 
    fill(#FFD21A);
    textFont(mifuentedos);
    textSize(35);
    text("Pulse (a) Aventura 1: Crear armas de combate.", 512, 315);
    text("Pulse (b) Aventura 2: Recolectar frutos.", 512, 400 );
    text("Pulse (c) Aventura 3: Pasear por la ciudad.", 512, 485 );
    text("Pulse (d) Aventura 4: Enfrentar al enemigo.", 512, 570 );
    text("Pulse (e) Aventura 5: Festejar en el circo.", 512, 655 );
    fill(255);
    textFont(mifuente);
    textSize(80);
    text("Menú", 512, 195 );
    flik = loadImage( "pngwing.com.png" );
    image(flik, 512, 0);   

    //--------------------------------------------------------
    //ARMAS
  } else if ( estado ==4) {  
    background( #009AFF );
    fill( 255 );
    textSize(35);
    text( "Creando armas de combate...", 512, 70 );
    textSize(25);
    fill(#FFD21A);

    textSize(18);
    text("(NO ES RECOMENDABLE,PRIMERO DEBES ALIMENTARTE)", 512, 715);
    textSize(25);
    text("O pulsa (x) para enfrentar al enemigo", 512, 680);
    text("Pulsa (m) para continuar a recolectar frutos", 512, 640);
    tint(255, 255);
    Creaarmas = loadImage( "armasfoto.png" );
    image(Creaarmas, 275, 205);

    //-------------------------------------------------------- 
    //FRUTOS
  } else if ( estado ==5) {  
    background( #009AFF );
    fill( 255 );
    textAlign(CENTER);
    textSize(35);
    text( "Recolectando frutos...", 512, 70 );
    textSize(25);
    fill(#FFD21A);
    text("Ahora te alimentaste pulsa (v) para pasear por la ciudad", 512, 690);
    tint(255, 255);
    frutos = loadImage( "recolectar.jpg" );
    image(frutos, 210, 185);


    //CIUDAD
  } else if ( estado ==6) {  
    background( #009AFF );
    fill( 255 );
    textAlign(CENTER);
    textSize(35);
    text( "Paseando por la ciudad...", 512, 70 );
    textSize(25);
    fill(#FFD21A);
    text("Pulsa (v) los saltamontes te atacan, regresa a salvar tu colonia!", 512, 690);
    tint(255, 255);
    ciudad = loadImage( "ciudad.jpg" );
    ciudad.resize(600, 300);  
    image(ciudad, 240, 205);


    //ENEMIGOS
  } else if ( estado ==7) {  
    background( #009AFF );
    fill( 255 );
    textAlign(CENTER);
    textSize(35);
    text( "En combate con el enemigo...", 512, 70 );
    textSize(25);
    fill(#FFD21A);
    text("Pulsa (v) para festejar en el circo", 512, 690);
    fill(255);
    textSize(20);
    text("Ganaste! tu colonia ha vencido al ejército enemigo!", 512, 615);
    tint(255, 255);
    enemigos = loadImage( "enemigos.jpg" );
    enemigos.resize(600, 300);
    image(enemigos, 220, 205);


    //CIRCO
  } else if ( estado ==8) {  
    background( #009AFF );
    fill( 255 );
    textAlign(CENTER);
    textSize(35);
    text( "Festejando en el circo...", 512, 70);
    textSize(25);
    fill(#FFD21A);
    tint(255, 255);
     text("FIN", 512, 600);
    text("Pulsa (v) para ir a los créditos", 512, 690);
    circo = loadImage( "circo.jpg" );
    image(circo, 180, 205);

    //CREDITOS
  } else if ( estado ==9) {  
    background( #009AFF);
    textAlign(CENTER);
    textSize(35);
    fill( titulocred );
    fill( titulocred);
    textSize(35);
    text("Bichos: Una aventura en miniatura", 512, posText+100);
    textSize(25);
    fill(#FFD21A);
    //titulocreditos
    textSize(25);
    fill(titulocred);
    text("Aventura gráfica realizada por Gustavo Javier Perugini", 512, posText+190 );
    titulocred += 35.9;
    posText = 120;
    fill(#FFD21A);
    text( "Créditos", 512, posText+50 );
    grupoend = loadImage( "grupodeco.png" );
    grupoend.resize(600, 300);  
    tint(255, 55);
    image(grupoend, 230, 180);
    text("Pulsa (z) para volver al inicio", 512, 690);
    textSize(15);
      text("Todos los derechos pertenecientes a las personas o entidades que correspondan", 512, posText+220 );
  }
  //--------------------------------------------------------
}

void keyPressed() {
  //
  if ( key == '1' )
    estado = estado + 1;
  //
  if ( key == '2' )
    estado = estado + 1;
 //
  if ( key == ' ' )
    estado = estado + 1;
  //
  if ( key == 'a' )
    estado = estado + 1 ;
  //
  if ( key == 'b' ) 
    estado = estado + 2 ;
  //
  if ( key == 'v' ) 
    estado = estado + 1 ;
  //
  if ( key == 'c' )
    estado = estado + 3;
  //
  if ( key == 'm' )
    estado = estado + 1;
  //
  if ( key == 'x' )
    estado = estado + 3;
  //
  if ( key == 'd' )
    estado = estado + 4;
  //
  if ( key == 'e' )
    estado = estado + 5;




  //RESTART
  if ( key == 'z' )
    estado = estado +1;


  //SI LLEGO A 10 REINICIO
  if ( estado == 10 )
    estado = 2;

  //IMPRIMO VALOR
  println( "estado: " + estado );
}
