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

    //--------------------------------------------------

    //ARMAS
  } else if ( estado ==3) {  
    background( #009AFF );
    fill( 255 );
    textSize(35);
    text( "Creando armas de combate...", 512, 70 );
    textSize(25);
    fill(#FFD21A);

    textSize(18);
    text("(NO ES RECOMENDABLE,PRIMERO DEBES ALIMENTARTE)", 512, 560);
    textSize(25);
    text("O pulsa (x) para decidir de que lado dar la batalla final", 512, 530);
    text("Pulsa (m) para continuar a recolectar frutos", 512, 500);
    fill(#FF0A0A);
    textSize(24);
    text("PULSA (0) PARA VIVIR ESTA HISTORIA DEL LADO DE LOS MALOS", 512, 600);
    tint(255, 255);
    Creaarmas = loadImage( "armasfoto.png" );
    image(Creaarmas, 275, 205);

    //-------------------------------------------------------- 

    ///////////////////////////////////////////////////////////////////

    //bienvenido malos
  } else if ( estado ==4) {  
    background( #009AFF );
    fill(#FF3131 );
    textSize(50);
    text( "Bienvenido", 512, 200 );
    fill( 255 );
    textSize(25);
    text( "Ahora estás de nuestro lado, haremos lo posible por arruinar la colonia", 512, 300 );
    text( "llevamos largo tiempo tratando de hundir a nuestro enemigo", 512, 330 );
    text( "pero Flik y su colonia siempre se salen con la suya", 512, 360 );
    text( "veremos si esta vez podrán escaparse de nuestras manos", 512, 390 );
    textSize(30);
    fill(#FFD21A);
    text( "Pulsa (6) para intimidar al enemigo", 512, 550);

    //////////////////////////////////////////////////////////

    //intimidar a la colonia
  } else if ( estado ==5) {  
    background( #009AFF );
    malos3 = loadImage( "malos3.jpg" );
    malos3.resize(1040, 800);
    image(malos3, 0, 0);
    fill(#FFD21A);
    textSize(22);
    text( "Empezemos con esto, vayamos camino a la colonia para darles el primer", 512, 30 );
    text( "escarmiento a este grupo de inservibles buenos para nada.", 512, 60 );
    text( "para dejarles en claro quien manda en estas tierras.", 512, 90 );
    textSize(25);

    text( "Pulsa (7) para iniciar el saqueo a la colonia.", 512, 740 );



    //////////////////////////////////////////////////////////


    //iniciar saqueo a la colonia
  } else if ( estado ==6) {  
    background( #009AFF );

    malos4 = loadImage( "malos4.jpg" );
    malos4.resize(1040, 800);
    image(malos4, 0, 0);
    textSize(22);
    fill(#FFD21A);
    text( "He reunido a todo mi ejército para iniciar esta misión", 512, 30 );
    text( "juntos venceremos, robaremos su comida y luego podremos", 512, 60 );
    text( "seguir conquistando terrenos para nuestro reinado.", 512, 90 );
    textSize(25);
    text( "Pulsa (8) para averiguar lo sucedido.", 512, 740 );
    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //salvación
  } else if ( estado ==7) {  
    background( #009AFF );

    salvacion = loadImage( "salvacion.jpg" );
    image(salvacion, 0, 80);
    fill( 255 );
    textSize(25);
    text( "Otra vez! se han logrado escapar", 512, 35 );
    text( "maldita sea! debemos planear un próximo ataque.", 512, 60 );
    textSize(25);
    fill(#FFD21A);
    fill(#FFD21A);
    text( "Pulsa (9) para seguir.", 512, 650 );





    //FRUTOS
  } else if ( estado ==8) {  
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
  } else if ( estado ==9) {  
    background( #009AFF );
    fill( 255 );
    textAlign(CENTER);
    textSize(35);
    text( "Paseando por la ciudad...", 512, 70 );
    textSize(25);
    fill(#FFD21A);
    text("Pulsa (k) los saltamontes te atacan, regresa a salvar tu colonia!", 512, 690);
    tint(255, 255);
    ciudad = loadImage( "ciudad.jpg" );
    ciudad.resize(600, 300);  
    image(ciudad, 240, 205);

    //FINAL ALTERNATIVO
  } else if ( estado ==10) {  
    background( #009AFF );
    fill( 255 );
    textAlign(CENTER);
    textSize(35);
    text( "DEBES ELEGIR DE QUE LADO ESTARÁS EN ESTA BATALLA FINAL", 512, 95 );
    textSize(22);
    text( "Según lo jugado hasta el momento ¿por qué equipo te inclinarías?", 512, 200 );
    text( "-La colonia de Flik y sus amigos buscan una vida en paz para poder progesar con su hogar.", 512, 230 );
    text( "-Los saltamontes planean irrumpir esa paz destruyendo todo a su paso.", 512, 260 );
    fill(#FFD21A);
    textSize(25);
    text( "EL DESTINO ESTÁ EN TUS MANOS, QUE DECIDES HACER?.", 512, 460 );
    
    text( "Pulsa (q) para jugar del lado de la colonia de Flik.", 512, 550 );
    text( "Pulsa (w) para jugar del lado de los saltamontes.", 512, 600 );




    //ENEMIGOS
  } else if ( estado ==11) {  
    background( #009AFF );
    fill( 255 );
    textAlign(CENTER);
    textSize(35);
    text( "En combate con el enemigo...", 512, 70 );
    textSize(25);
    fill(#FFD21A);
    text("Pulsa (l) para festejar en el circo", 512, 690);
    fill(255);
    textSize(20);
    text("Ganaste! tu colonia ha vencido al ejército enemigo!", 512, 615);
    tint(255, 255);
    enemigos = loadImage( "enemigos.jpg" );
    enemigos.resize(600, 300);
    image(enemigos, 220, 205);


    //CIRCO
  } else if ( estado ==12) {  
    background( #009AFF );
    fill( 255 );
    textAlign(CENTER);
    textSize(35);
    text( "Festejando en el circo...", 512, 70);
    textSize(25);
    fill(#FFD21A);
    tint(255, 255);
    text("FIN", 512, 600);
    text("Pulsa (j) para ir a los créditos", 512, 690);
    circo = loadImage( "circo.jpg" );
    image(circo, 180, 205);




    //CREDITOS
  } else if ( estado ==13) {  
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

    //--------------------------------------------------------

    //ENEMIGOS
  } else if ( estado ==14) {  
    background( #009AFF );
    fill( 255 );
    textAlign(CENTER);
    textSize(35);
    text( "La colonia ha quedado destruida, es hora de festejar!", 512, 70 );
    textSize(25);
    fill(#FFD21A);
    text("Pulsa (b) para volver a jugar", 512, 690);
   malosganan = loadImage( "malos ganan.jpg" );
    image(malosganan, 180,180);


    
  }
  /////////////////////////
}

void keyPressed() {
  //


  if ( key == '1' ) if  ( estado == 0 ) 
    estado = estado + 1;
  //
  if ( key == '2' ) if ( estado == 1 )
    estado = estado + 1;
  //
  if ( key == ' ' )if ( estado == 2 ) 
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
