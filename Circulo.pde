class Circulo{
  int posX;
  int posY;
  int tamanio;
  color colorDeFondo;
  int velocidad;
  int direccion;
  int tamanioMinimo;
  
  Circulo(int posX, int posY, int tamanio, color colorDeFondo){
    this.tamanioMinimo = 10;
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
    this.tamanio++;
  }
  
  //void moverte(){
  //  this.velocidad = round(random(1, 3));
  //  this.direccion = 1;
  //  this.posX += this.velocidad * this.direccion;
    
  //  if((this.posX > width - this.tamanio/2)){
  //    println("entro por la condicion");
  //    this.direccion = -this.direccion;
  //    println(this.direccion);
  //  }
    
    //switch(direccion){
    //  case "DERECHA": {
    //    this.posX++;
    //    break;
    //  }
    //  case "IZQUIERDA": {
    //    this.posX--;
    //    break;
    //  }
    //  case "ARRIBA": {
    //    this.posY--;
    //    break;
    //  }
    //  case "ABAJO": {
    //    this.posY++;
    //    break;
    //  }
    //}
  
}
