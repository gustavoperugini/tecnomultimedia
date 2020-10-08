import ddf.minim.*;
//variable sonido
Minim minim;
AudioPlayer song;
String[] textos = new String[10];  
PFont mifuente;
PFont mifuentedos;
PImage cero, uno, dos, tres, cuatro, cinco, seis, siete, ocho, nueve, diez;
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
  estado = 0;
  //minim
  minim= new Minim (this);
  song = minim. loadFile("song.mp3");
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
    txt(25, #FFD21A, "Pulsa (espacio) para conocer la historia", 690);
    //--------------------------------------------------------
  } else if ( estado == 1 ) {
    //1.HISTORIA
    background( #009AFF);
    textSize(18);
    text(textos[1], 512, posText+140);
    fill( titulocred );
    txt(25, #FFD21A, "Pulsa (1)", 690);
    //--------------------------------------------------------
  } else if ( estado == 2 ) {
    //MENU
    background( #009AFF );
    fill( 255 );
    tint(255, 74);
    cero = loadImage( "0.png" );
    cero.resize(1024, 768);
    image (cero, 0, 0);   
    textFont(mifuentedos);
    txt(40, 255, "Pulsa (2) para iniciar la aventura", 506);
    textFont(mifuente);
    txt(150, #FFD21A, "Bichos", 340);
    //--------------------------------------------------
    //ARMAS
  } else if ( estado ==3) {  
    background( #009AFF );
    txt(35, 255, "Creando armas de combate...", 70);
    fill(#FFD21A);
    textSize(25);
    text(textos[2], 512, 530);
    txt(24, #FF0A0A, "PULSA (0) PARA VIVIR ESTA HISTORIA DEL LADO DE LOS MALOS", 630);
    tint(255, 255);
    uno = loadImage( "1.png" );
    image(uno, 275, 190);
    //-------------------------------------------------------- 
    //bienvenido malos
  } else if ( estado ==4) {  
    background( #009AFF );
    txt(50, #FF3131, "Bienvenido", 200);
    fill( 255 );
    textSize(25);
    text( textos[3], 512, 300 );
    txt(30, #FFD21A, "Pulsa (6) para intimidar al enemigo", 550);
    //--------------------------------------------------------
    //intimidar a la colonia
  } else if ( estado ==5) {  
    background( #009AFF );
    dos = loadImage( "2.png" );
    dos.resize(1040, 800);
    image(dos, 0, 0);
    fill(#FFD21A);
    textSize(22);
    text( textos[4], 512, 30 );
    txt(25, #FFD21A, "Pulsa (7) para iniciar el saqueo a la colonia.", 740);
    //--------------------------------------------------------
    //iniciar saqueo a la colonia
  } else if ( estado ==6) {  
    background( #009AFF );
    tres = loadImage( "3.png" );
    tres.resize(1040, 800);
    image(tres, 0, 0);
    textSize(22);
    fill(#FFD21A);
    text(textos[5], 512, 30 );
    txt(25, #FFD21A, "Pulsa (8) para averiguar lo sucedido.", 740);
    //--------------------------------------------------------
    //salvación
  } else if ( estado ==7) {  
    background( #009AFF );
    cuatro = loadImage( "4.png" );
    image(cuatro, 0, 80);
    fill( 255 );
    textSize(25);
    text(  textos[6], 512, 35 );
    txt(25, #FFD21A, "Pulsa (9) para seguir.", 650);
    //--------------------------------------------------------
    //FRUTOS
  } else if ( estado ==8) {  
    background( #009AFF );
    txt(35, 255, "Recolectando frutos...", 70);
    txt(25, #FFD21A, "Ahora te alimentaste pulsa (v) para pasear por la ciudad", 690);
    tint(255, 255);
    cinco = loadImage( "5.png" );
    image(cinco, 210, 185);
    //--------------------------------------------------------
    //CIUDAD
  } else if ( estado ==9) {  
    background( #009AFF );
    txt(35, 255, "Paseando por la ciudad...", 70);
    txt(25, #FFD21A, "Pulsa (k) los saltamontes te atacan, regresa a salvar tu colonia!", 690);
    tint(255, 255);
    seis = loadImage( "6.png" );
    seis.resize(600, 300);  
    image(seis, 240, 205);
    //--------------------------------------------------------
    //FINAL ALTERNATIVO
  } else if ( estado ==10) {  
    background( #009AFF );
    txt(35, 255, "DEBES ELEGIR DE QUE LADO ESTARÁS EN ESTA BATALLA FINAL", 95);
    textSize(25);
    text(textos[7], 512, 350 );
    fill(#FFD21A);
    textSize(25);
    text(textos[8], 512, 600 );
    //--------------------------------------------------------
    //ENEMIGOS
  } else if ( estado ==11) {  
    background( #009AFF );
    txt(35, 255, "En combate con el enemigo...", 70);
    txt(25, #FFD21A, "Pulsa (l) para festejar en el circo", 690);
    fill(255);
    textSize(20);
    txt(20, 255, "Ganaste! tu colonia ha vencido al ejército enemigo!", 615);
    tint(255, 255);
    siete = loadImage( "7.png" );
    siete.resize(600, 300);
    image(siete, 220, 205);
    //--------------------------------------------------------
    //CIRCO
  } else if ( estado ==12) {  
    background( #009AFF );
    txt(35, 255, "Festejando en el circo...", 70);
    tint(255, 255);
    txt(25, #FFD21A, "FIN", 600);
    txt(25, #FFD21A, "Pulsa (j) para ir a los créditos", 690);
    ocho = loadImage( "8.png" );
    image(ocho, 180, 205);
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
    nueve = loadImage( "9.png" );
    nueve.resize(600, 300);  
    tint(255, 55);
    image(nueve, 230, 180);
    //--------------------------------------------------------
    //ENEMIGOS
  } else if ( estado ==14) {  
    background( #009AFF );
    txt(35, 255, "La colonia ha quedado destruida, es hora de festejar!", 70);
    textSize(25);
    fill(#FFD21A);
    txt(25, #FFD21A, "Pulsa (b) para volver a jugar", 690);
    diez = loadImage( "10.png" );
    image(diez, 180, 180);
  }
  //--------------------------------------------------------
}
