class Juego{
  Circulo circuloPrincipal;
  //Circulo [] circulosSecundarios;
  ArrayList<Circulo> circulosSecundarios;
  
  Juego(){
    this.circuloPrincipal = new Circulo(mouseX, mouseY, tamanioCirculoPrincipal, colorCirculoPrincipal);
    this.circulosSecundarios = new ArrayList<Circulo>();
    for(var i = 0; i < round(random(10, 50)); i++){
      Circulo c = new Circulo(round(random(width/2, width)), round(random(0, height)), tamanioCirculoSecundario, colorCirculoSecundario);
      this.circulosSecundarios.add(c);    
    }
  }
  
  void dibujarte(){
    this.circuloPrincipal.posicionarte(mouseX, mouseY);
    this.circuloPrincipal.dibujarte();
    
    for(var i = 0; i < this.circulosSecundarios.size(); i++ ){
        Circulo circulo = this.circulosSecundarios.get(i);
        circulo.dibujarte(); 
        
        if(calcularDistanciaConCirculoPrincipal(circulo) < 600){
          circulo.agrandarte();
          this.circuloPrincipal.achicarte();
        }else{
          this.circuloPrincipal.agrandarte();
          circulo.achicarte();
        }
        
        if(this.circuloPrincipal.tamanio == circulo.tamanio){
          this.circuloPrincipal.tamanio = this.circuloPrincipal.tamanio;
          circulo.tamanio = circulo.tamanio;
          this.circuloPrincipal.cambiarColor(colorEquilibrado);
          circulo.cambiarColor(colorEquilibrado);          
        }else{
          this.circuloPrincipal.cambiarColor(colorCirculoPrincipal);
          circulo.cambiarColor(colorCirculoSecundario);       
        }        
     }
  }
  
  int calcularDistanciaConCirculoPrincipal(Circulo circuloSecundario){
    return round(dist(this.circuloPrincipal.posX, this.circuloPrincipal.posY, circuloSecundario.posX, circuloSecundario.posY));    
  }
  
}
