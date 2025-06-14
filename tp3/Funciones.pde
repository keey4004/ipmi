//funcion que no retorna --------------
void dibujarCuadrado(float x, float y, float tam, int tipo) {
  int base = 10;
  float paso = tam / (float)(2 * base);
  
  pushMatrix();
  
  translate(x + tam / 2, y + tam / 2); //translada el codigo a la derecha
  for (int i = base; i > 0; i--) {
    float s = i * paso * 2;
    color c = colores ? colorBase(i, tipo) : miBase[(i + tipo) % miBase.length];
    fill(c);
    stroke(255, 23, 23);
    strokeWeight(5);
    rectMode(CENTER);
    rect(0, 0, s, s);
  }
  popMatrix();
}

//funcion propia que si retorna (un color) -----------
color colorBase(int i, int tipo) {
  float a = map(i, 0, 15, 0, 255);
  float b = random(10, 255);
  float c = map(tipo, 0, 3, 255, 0);
  return color(a, b, c);
}

//funcion propia que no retorna --------------
void iniciarColor() {
  miBase = new color[] {
    
    color(230, 15, 0),      // rojo
    color(241, 155, 255),   // rosa
    color(249, 169, 120),   // naranja
    color(66, 238, 252),    // cian
    color(75,252,66),       // verde
    color(41, 101, 227),    // azul
    color(255, 255, 0),     // amarillo
    color(255, 0, 255),     // magenta
  };
}

//para alternar colores con un click
void mousePressed() {
  colores = true;
}

//reinicia codigo con tecla S
void keyPressed() {
  if (key == 's' || key == 'S') {
    t = 0;
    colores = false;
    reiniciarEscala();
  }
}

//reinicia escala con tecla S
void reiniciarEscala() {
  for (int y = 0; y < fila; y++) {
    for (int x = 0; x < fila; x++) {
      escala[y][x] = 1.0;
    }
  }
}
