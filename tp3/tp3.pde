// Gmelin Trinidad | legajo: 122710/2 | TP3 "Cuadrados RGB"
// https://www.youtube.com/watch?v=QwfPwFhgdfk

PImage ref;

void setup() {
  size(800, 400);
  ref = loadImage("ref.jpg");
  
  
}

void draw(){
  image(ref, 0, 0, 400, 400);
  
  CuadradosFondo(100, 2, width/2, true);
  CuadradoCentro(600, 200, true);
  
}
