/* Bejar Keyla Nerea
link : https://youtu.be/GDhV7ndXLec
*/


PImage imgUno;
float t = 0;
int cuadrado = 4;
int fila = 2;
int tamaño = 400;
color[] miBase;
boolean colores = false;
float[][] escala;

void setup() {
  size(800, 400);
  iniciarColor();
  imgUno = loadImage("data/F_12.jpg");
  escala = new float[fila][fila];
  reiniciarEscala();
}

void draw() {
  background(255);
  //imagen de referencia
  image(imgUno, 0, 0, 400, 400);

  int tam = tamaño / fila;

  for (int y = 0; y < fila; y++) {
    for (int x = 0; x < fila; x++) {
      int index = y * fila + x;
      
      //ubicacion del cuadrado
      float posX = width / 2 + x * tam;
      float posY = y * tam;

      //para saber si el mouse esta encima
      if (mouseX > posX && mouseX < posX + tam && mouseY > posY && mouseY < posY + tam) {
        escala[y][x] = lerp(escala[y][x], 1.5, 0.1); // aumenta tamaño -----
      } else {
        escala[y][x] = lerp(escala[y][x], 1.0, 0.05); // vuelve al original -----
      }
      //dibujo, funcion que no retorna nada --------------
      dibujarCuadrado(posX, posY, tam * escala[y][x], index);
    }
  }
}
