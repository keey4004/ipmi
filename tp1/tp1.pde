PImage Photo;

void setup(){
  size(800, 400);
  Photo = loadImage("mifoto.jpeg");
}

void draw(){
  background(80, 152, 217);
  image(Photo, 0, 0, 400, 400);
  translate(140,0);

//cabello
fill(70, 27, 10);
noStroke();
ellipse(450, 170, 200, 240);

//cabello-cuello
noStroke();
fill(70, 27, 10);
rect(455, 200, -100, 160);

//cuello
strokeWeight(6);
noStroke();
fill(255, 217, 181);
rect(500, 210, -100, 100);

//cabeza
strokeWeight(3);
stroke(0);
fill(255, 217, 181);
ellipse(450, 170, 150, 180);

//cabello-frente
noStroke();
fill(70, 27, 10);
rect(400, 79, 97, 23);
strokeWeight(6);
stroke(70, 42, 11);
noFill();
arc(435, 110, 40, 39, radians(270), radians(450));

//cejas
strokeWeight(4);
stroke(0, 0, 0);
noFill();
arc(415, 153, 40, 39, radians(180), radians(360));
strokeWeight(4);
stroke(0, 0, 0);
noFill();
arc(480, 153, 40, 39, radians(180), radians(360));

//ojos
strokeWeight(4);
stroke(0, 0, 0);
fill(255, 255, 255);
ellipse(415, 170, 40, 35);
ellipse(480, 170, 40, 35);

//boca
noStroke();
fill(232, 97, 92);
rect(438, 212, 23, 20);
stroke(0);
strokeWeight(4);
line(438, 222, 460, 222);

//iris
fill(39, 109, 58);
ellipse(415, 170, 20, 20);
ellipse(480, 170, 20, 20);

//nariz
noStroke();
fill(237, 165, 149);
triangle(448, 170, 438, 199, 460, 199);
stroke(0);
point(469, 199);

//cuerpo
strokeWeight(3);
stroke(0, 0, 0);
fill(147, 147, 147);
rect(345, 302, 200, 200);
}
