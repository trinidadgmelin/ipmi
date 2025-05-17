// Gmelin Trinidad | legajo: 122710/2 | TP2

PImage tdplogo, tdp1, tdp2, tdp3, tdp4, tdp5, tdp;
PFont t;
int segundos, logoX, logoY, posX, posY, posXizq, posYsubir, posYbajar, posYsubir2, posYbajar2, posXb, posYb, posInicial;

void setup() {
  size(640, 480);
  t= loadFont("bookantiqua.vlw");
  textFont(t, 28);
  tdplogo = loadImage("tdplogo.png");
  tdp1 = loadImage("tdp1.jpg");
  tdp2 = loadImage("tdp2.jpg");
  tdp3 = loadImage("tdp3.jpg");
  tdp4 = loadImage("tdp4.jpg");
  tdp5 = loadImage("tdp5.jpg");
  tdp = loadImage("tdp.jpg");
  logoX= width/2;
  logoY= height/2;
  posX=360;
  posY=237;
  posXizq= -300;
  posYsubir= 520;
  posYbajar= -30;
  posYsubir2= 520;
  posYbajar2= -30;
  posXb= 640;
  posYb= 480;
  posInicial= 0;
}

void draw() {
  background(0);
  
  float tono = map(frameCount, -100, 255, -100, 255);
  tint(255, 255, 255, tono);
  
  imageMode(CENTER);
  image(tdplogo, logoX, logoY, 350, 44);
  
  if (frameCount % 60==0) {
    segundos ++;
  }
    
  if (segundos > 6 && segundos < 17) {
    image(tdp1, posX, posY);
    
    posXizq +=2;
    fill(0);
    text("Director\nGiancarlo Volpe", posXizq, 180, width, 150);
  }
  
  else if (segundos >= 15 && segundos < 24) {
    image(tdp2, posX - 30, posY);
    
    posYsubir -=2;
    fill(0);
    text("Directores de animación\nCarlyle Wilson\nMeruan Salim", 250, posYsubir, width, 150);
  }
  
  else if (segundos >= 22 && segundos < 29) {
    image(tdp3, posX, posY);
    
    posYbajar +=2;
    fill(0);
    text("Productor\nLauren Topal", 375, posYbajar, width, 150);
  }
  
  else if (segundos >= 27 && segundos < 35) {
    image(tdp4, posX + 8, posY);
    
    posYsubir2 -=2;
    fill(0);
    text("Coproductores\nDevon Giehl\nIain Hendry\nNeil Mukhopadhyay", 325, posYsubir2, width, 150);
  }
  
  else if (segundos >= 33 && segundos < 41) {
    image(tdp5, posX + 8, posY);
    
    posYbajar2 +=2;
    fill(0);
    text("Música por\nFrederik Wiedmann", 345, posYbajar2, width, 150);
  }
  
  else if (segundos >= 39){
    image(tdp, width/2, posY + 70);
    
    fill(255);
    noStroke();
    ellipse(width/2, 480, 550, 100);
    fill(0);
    text("Toca acá para reiniciar", 180, 450, width, 50);
  }
}

  void mousePressed() {
    if (mouseX>80 && mouseX<560 && mouseY>450 && mouseY<480) {
    logoX= width/2;
    logoY= height/2;
    posX=360;
    posY=237;
    posXizq= -300;
    posYsubir= 520;
    posYbajar= -30;
    posYsubir2= 520;
    posYbajar2= -30;
    posXb= 640;
    posYb= 480;
    posInicial= 0;
    frameCount= 0;
    segundos= 0;
    }
  }
