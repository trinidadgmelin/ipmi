void CuadradosFondo() {
  
  for (int x=0; x<cant; x++) {
    for (int y=0; y<cant; y++) {
      for (int i=width/4; i>=5; i-=45) {
        int posX = x * tam/2 + 100;
        int posY = y * tam/2 + 100; //tam/2 = 200, por lo que creaba un espacio de un grupo de cuadrados concéntricos entre los cuadrados concéntricos dibujados, +100 = pixeles hasta el centro del cuadrado
      rectMode(CENTER);
      rect(posX, posY, i, i);
      
        if ((x+y)%2==0) {
          par=true;
        }
        else {
          par=false;
        }
        
      }
    }
  }
}

//void Relleno() {
  
  //if (par=true){
   // fill(0, 0, 0);
   // CuadradosFondo();
 // }
//  else {
 //   fill (255, 255, 255);
 //   CuadradosFondo();
  //}
  
//}
