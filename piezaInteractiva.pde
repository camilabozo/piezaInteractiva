int tamanioCirculoPrincipal = 100;
int tamanioCirculoSecundario = 50;
color colorCirculoPrincipal = color(157, 55, 201);
color colorCirculoSecundario = color(121, 120, 121);
Juego juego;

void setup(){
  size(1200, 600);
  background(255);
  //frameRate(10);
  juego = new Juego();
}

void draw(){
  background(255);
  juego.dibujarte();
}
