class Circulo{
  int posX;
  int posY;
  int tamanio;
  color colorDeFondo;
  int velocidad;
  int direccion;
  int tamanioMinimo;
  int tamanioMaximo;
  
  Circulo(int posX, int posY, int tamanio, color colorDeFondo){
    this.tamanioMinimo = 10;
    this.tamanioMaximo = 400;
    this.posX = posX;
    this.posY = posY;
    this.tamanio = tamanio;
    this.colorDeFondo = color(colorDeFondo);
  }
  
  void dibujarte(){
    noStroke();
    fill(this.colorDeFondo);
    ellipse(this.posX, this.posY, this.tamanio, this.tamanio);
  }
  
  void posicionarte(int posX, int posY){
    this.posX = posX;
    this.posY = posY;
  }
  
  void achicarte(){
    if(this.tamanio > this.tamanioMinimo){
      this.tamanio--;      
    }
  }
  
  void agrandarte(){
    if(this.tamanio < this.tamanioMaximo){
      this.tamanio++;
    }
  }
  
  void cambiarColor(color nuevoColor){
    this.colorDeFondo = nuevoColor;
  }

}
