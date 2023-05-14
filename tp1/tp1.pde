
float miVariable;
float posYTexto;
float posYTexto2;
float velTexto;

int contador, contador2;
int correContador;

String titulo;
String titulo2;

color colorBoton;
color colorBoton2;

boolean botonPresionado;

PImage  soldador;
PFont fuenteTitulo, fuente2;


void setup() {

  size(640, 480);
  //miVariable = frameCount;
  titulo = "SOLDADOR DE ESTAÑO";
  titulo2 = "-CAUTÍN-";
  soldador = loadImage("soldador1.jpg");
  fuenteTitulo = loadFont("TITULO.vlw");
  fuente2 = loadFont("forsaking.vlw");
  posYTexto = 0;
  posYTexto2 = 510 ;
  velTexto = 3;
  colorBoton = color(200, 0, 0);
  colorBoton2 = color(100, 0, 0);
  contador = 1;
  correContador= 1;
  contador2 = 1;
  
  //botonPresionado=false;
}

void draw() {
  miVariable = frameCount ;
  posYTexto = posYTexto + velTexto ;
  posYTexto2 = posYTexto2 - velTexto;

  image( soldador, 0, 0, 640, 480);
  fill(244, 250, 64);
  textFont(fuenteTitulo);
  text( titulo, 90, posYTexto);
  text( titulo2, 230, posYTexto2 );


  if (posYTexto >= 480) {
    velTexto = -3
      ;
  }
  if (posYTexto2 <= 0) {
    velTexto = +3;
  }

  correContador++;

  

  if (correContador >= 325) {
    if (correContador>325) {
      soldador = loadImage("soldador2.jpg");
      image( soldador, 0, 0, 640, 480);
      contador++;
      textFont(fuente2);
      fill(110, 196, contador*2);
      
      text("Es una herramienta eléctrica usada para soldar", contador/2, 150);
      fill(200,0,0);
      text("¡OJO porque quema!", 600 - (contador*2), 350);
    }
  }

  if (correContador >= 590) {
    soldador = loadImage("soldador3.jpg");
    contador2++;
    image( soldador, 0, 0, 640, 480);
    fill(103, 250, 8);

    text("Funciona convirtiendo la energía eléctrica en calor,\nque a su vez provoca la fusión del material utilizado \nen la soldadura, como por ejemplo el estaño.", 10, contador2+5);
  
  fill(colorBoton);
   rect(495, 380, 70,50);
  fill(255);
  text("RESET", 500,425);
}


}


void mousePressed() {
 
 if (mousePressed  && mouseX >= 495 && mouseX <= 565 && mouseY >= 380 && mouseY <= 430){ 
 colorBoton=colorBoton2;
 soldador = loadImage("soldador1.jpg");
 image( soldador, 0, 0, 640, 480);
 correContador=1;
  fill(244, 250, 64);
  textFont(fuenteTitulo);
  text( titulo, 90, posYTexto);
  text( titulo2, 230, posYTexto2 );


  if (posYTexto >= 480) {
    velTexto = -3
      ;
  }
  if (posYTexto2 <= 0) {
    velTexto = +3;
  }

  correContador++;
 }
 
 }
 
