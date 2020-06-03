PImage casino;
//VARIABLES ESC1
float titulo1;
PFont fuenteTitulo;
float posRec1;
//VARIABLES ESC2
int posText;
//VARIABLES ESC 3
PFont fuenteCasino;
float colorTextoTitulo3;
//LOGO
PImage logo;

void setup() {
  size (400, 400);
  textAlign (CENTER, CENTER);
  imageMode(CENTER);
  colorMode(RGB);

  //PARAMETRO ESC1
  fuenteTitulo = loadFont("FelixTitlingMT-48.vlw");  
  titulo1 = -90;
  posRec1 = -1900;
  //PARAMETROS ESCENA 2
  posText = 120;
  //PARAMETROS ESCENA3
  fuenteCasino = loadFont("Broadway-48.vlw");
  colorTextoTitulo3 = -600;
}
void draw() {
  background (0);

//ESCENA 1
  textFont(fuenteTitulo);
  fill(titulo1);
  textSize(15);
  text("Universal Pictures and Syalis D.A", width/2, height/2.5);

  //Degrade
  noStroke();
  fill(0);
  rect (posRec1, 0, 1400, height*2);
  //ACT ESC1
  posRec1 +=1.3;
  titulo1 += 0.9;

  //ESC 3 
  fill(colorTextoTitulo3);
    textFont(fuenteTitulo);
    textSize(10);
  text("Adapted from a true story",200,350);
   textFont(fuenteCasino);
  textSize(72);
  text("Casino", width/2, height/4);
  textFont(fuenteTitulo);
  textSize(15);
  text("a Film by Martin Scorsese.", 200, 142);
  //ACT ESC3
  colorTextoTitulo3 += 0.6;

  //ACTORES
  textFont(fuenteTitulo);
  fill(255);
  textSize(25);
  text("Robert De Niro ", 200, posText-1590);
  text("Joe Pesci", 200, posText-1560);
  text("Sharon Stone in... ", 200, posText-1530);
  //ACT ESC4
  posText +=2;
 
    //EDICION DE IMAGEN
    tint(255, 24);
   casino = loadImage( "casino.png" );
  casino.resize(190,190);
  image (casino,200,200);

}
