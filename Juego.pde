class Juego{
  SoundFile gloria;
  Circulo circuloPrincipal;
  ArrayList<Circulo> circulosSecundarios;
  
  Juego(PApplet pApplet){
    this.gloria = new SoundFile(pApplet, "gloria.mp3");
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
        
        if(calcularDistanciaConCirculoPrincipal(circulo) < 500){
          circulo.agrandarte();
          this.circuloPrincipal.achicarte();
        }else{
          this.circuloPrincipal.agrandarte();
          circulo.achicarte();
        }
        
        if(tamanioEquilibradoConCirculoPrincipal(circulo)){
          this.gloria.play();
          this.circuloPrincipal.cambiarColor(colorEquilibrado);
          circulo.cambiarColor(colorEquilibrado);          
        }else{
          this.gloria.stop();
          this.circuloPrincipal.cambiarColor(colorCirculoPrincipal);
          circulo.cambiarColor(colorCirculoSecundario);       
        }
          
     }
  }
  
  int calcularDistanciaConCirculoPrincipal(Circulo circuloSecundario){
    return round(dist(this.circuloPrincipal.posX, this.circuloPrincipal.posY, circuloSecundario.posX, circuloSecundario.posY));    
  }
  
  boolean tamanioEquilibradoConCirculoPrincipal(Circulo circuloSecundario){
    return ((this.circuloPrincipal.tamanio > 150) && (this.circuloPrincipal.tamanio < 200)) && ((circuloSecundario.tamanio > 150) && (circuloSecundario.tamanio < 200));
  }
  
}
