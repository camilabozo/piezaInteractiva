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
    
    //for(var j = 0; j < 5; j++){
    //  this.circulosSecundarios.get(1).moverte("ARRIBA");
    //  this.circulosSecundarios.get(1).dibujarte();      
    //}
    for(var i = 0; i < this.circulosSecundarios.size(); i++ ){
      Circulo circulo = this.circulosSecundarios.get(i);
      circulo.dibujarte(); 
      //circulo.moverte();
      //for(var j = 0; j < 5; j++){
      //  circulo.moverte("DERECHA");
      //  circulo.dibujarte();        
      //}
      //for(var j = 0; j < 5; j++){
      //  circulo.moverte("ARRIBA");
      //  circulo.dibujarte();        
      //}
      //for(var j = 0; j < 5; j++){
      //  circulo.moverte("IZQUIERDA");    
      //  circulo.dibujarte();        
      //}
      //for(var j = 0; j < 5; j++){
      //  circulo.moverte("ABAJO");   
      //  circulo.dibujarte();        
      //}
    }
  }
  
  void consultarDistancia(){
    for(var i = 0; i < this.circulosSecundarios.size(); i++){
      int posXcirculoSecundario = circulo.get(i).posX;
    }
    
    int distancia = this.circuloPrincipal.posX - circulo.posX;
    println(diferencia); 
  }
  
}
