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
      Circulo circulo = this.circulosSecundarios.get(1);
      circulo.dibujarte(); 
         
      if(distanciaEnXConCirculoPrincipal(circulo) < 200 && distanciaEnYConCirculoPrincipal(circulo) < 200){
        this.circuloPrincipal.achicarte();
        circulo.agrandarte();
      }else{
        this.circuloPrincipal.agrandarte();
        circulo.achicarte();
      }     
    }
  }
  
  int distanciaEnXConCirculoPrincipal(Circulo circuloSecundario){    
    return this.circuloPrincipal.posX - circuloSecundario.posX;
  }
  
  int distanciaEnYConCirculoPrincipal(Circulo circuloSecundario){    
      return this.circuloPrincipal.posY - circuloSecundario.posY;
  }
 
}
