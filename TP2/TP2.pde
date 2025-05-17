PFont miFuente;
int numPantalla;
int contadorTiempo;
PImage imgUno, imgDos, imgTres;
float posX;

void setup() {
  size(640, 480);
  numPantalla = 0;
  contadorTiempo = 0;
  frameRate(30); 
  
  //fuente para texto --------
  miFuente = createFont("data/PoppinsSemiBold.ttf", 48);
  textFont(miFuente);
  
  //imágenes para escenas -------
  imgUno = loadImage("data/imagen1.jpg");
  imgDos = loadImage("data/imagen2.jpg");
  imgTres = loadImage("data/imagen3.jpg");
}

void draw() {
  //pantalla 0 ---------
  if (numPantalla == 0) {
  image(imgUno, 0, 0, width, height);
    fill(0);
    textAlign(CENTER,CENTER);
    textSize(24);
    text("Obra: Exploded View", width/2, height/2);
    
  } else if (numPantalla == 1) {
    image(imgDos, 0, 0, width, height);
   //pantalla 1 ---------
    textAlign(CENTER,CENTER);
    textSize(24);
    float opacidad = map(contadorTiempo, 0, 150, 0, 255);
    fill(0, opacidad);
    text("Año: 2011", width/2, height/2);
    
  } else if (numPantalla == 2) {
   //pantalla 2 ---------
    image(imgTres, 0, 0, width, height);
    fill(0);
    textAlign(CENTER,CENTER);
    textSize(24);
    text("Autor: Jim Campbell", width/2, height/2);
    
    if (numPantalla == 2) {
    textAlign(CENTER);
    text("Reiniciar", width/2, height/2);
    ellipse(300,300,100,100);
  }
  
  //contador de tiempo ------
  contadorTiempo++;
  if (contadorTiempo>30*5) {
    contadorTiempo = 0;
    numPantalla++;
    if (numPantalla>2) {
      numPantalla = 0;
    }
  }
}

void mousePressed() {
  numPantalla++;
  if (numPantalla == 0) {
    float distancia = dist(100,200,mouseX,mouseY);
    if(distancia<40) {
      numPantalla = 1;
    }
  } else if(numPantalla == 1) {
    float distancia = dist (100,200,mouseX,mouseY);
    if(distancia<50) {
      numPantalla = 0;
    }
  }
  
}
