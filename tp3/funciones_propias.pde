void CuadradosFondo(int ancho, int cant, int tam, boolean negro) {
  
  for (int x=0; x<cant; x++) {
    for (int y=0; y<cant; y++) {
      for (int i=width/4; i>=5; i-=49) {
        int posX = x * tam/cant + ancho + tam;
        int posY = y * tam/cant + ancho; 
      
      if (key == 'r' || key == 'R') {
          fill(random(50, 100), 0, 0);
        }
       else if (key == 'a' || key == 'A') {
          fill(0, 0, random(50, 100));
        }
        else if (key == 'v' || key == 'V') {
          fill(0, random(50, 100), 0);
        }
       else if (negro) {
          fill(0);
        }
       else {
          fill(255);
        }
    
    rectMode(CENTER);
    rect(posX, posY, i, i);
    
    negro= !negro;
      }
    }
  }
  
}


void CuadradoCentro(int X, int Y, boolean relleno) {
  
  for (int i=210; i>=1; i-=46) {
    
      if (key == 'r' || key == 'R') {
          fill(random(100, 250), 0, 0);
        }
       else if (key == 'a' || key == 'A') {
          fill(0, 0, random(100, 250));
        }
        else if (key == 'v' || key == 'V') {
          fill(0, random(100, 250), 0);
        }
       else if (relleno) {
          fill(0);
        }
       else {
          fill(255);
        }
      
      
      if (SobreCuadradoCentro(100, 600, 200)==true){
      float posX= map(i, X, 30, X, mouseX);
      float posY= map(i, Y, 30, Y, mouseY);
      rect(posX, posY, i, i);
      }
      else{
        rect(X, Y, i, i);
      }
      
      
      relleno= !relleno;
      }
  
}


boolean SobreCuadradoCentro(int ancho, int X, int Y) {
  if (mouseX>X-ancho && mouseX<X+ancho && mouseY>Y-ancho && mouseY<Y+ancho) {
    return true;
  }
  else {
    return false;
  }
}
