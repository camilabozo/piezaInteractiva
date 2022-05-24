import processing.sound.*;
int tamanioCirculoPrincipal = 100;
int tamanioCirculoSecundario = 50;
color colorCirculoPrincipal = color(50, 255, 243);
color colorCirculoSecundario = color(154, 52, 138);
color colorEquilibrado = color(68, 84, 161);

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
