import processing.sound.*;
int tamanioCirculoPrincipal = 100;
int tamanioCirculoSecundario = 50;
color colorCirculoPrincipal = color();
color colorCirculoSecundario = color();
color colorEquilibrado = color(70, 151, 193);

Juego juego;

void setup(){
  size(1200, 600);
  frameRate(40);
  juego = new Juego(this);
}

void draw(){
  background(255);
  juego.dibujarte();
}
