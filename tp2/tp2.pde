PImage tdplogo, tdp1, tdp2, tdp3, tdp4, tdp5, tdp;
PFont t;
int segundos, posX, posY, posXizq, posYsubir, posYbajar, posYsubir2, posYbajar2;

void setup() {
  size(640, 480);
  t= loadFont("matura.vlw");
  t= loadFont("bookantiqua.vlw");
  textFont(t, 30);
  tdplogo = loadImage("tdplogo.png");
  tdp1 = loadImage("tdp1.jpg");
  tdp2 = loadImage("tdp2.jpg");
  tdp3 = loadImage("tdp3.jpg");
  tdp4 = loadImage("tdp4.jpg");
  tdp5 = loadImage("tdp5.jpg");
  tdp = loadImage("tdp.jpg");
  posX=360;
  posY=237;
  posXizq= -300;
  posYsubir= 520;
  posYbajar= -30;
  posYsubir2= 520;
  posYbajar2= -30;
}

void draw() {
  background(0);
  
  float tono = map(frameCount, -100, 255, -100, 255);
  tint(255, 255, 255, tono);
  
  imageMode(CENTER);
  image(tdplogo, width/2, height/2, 350, 44);
  
  if (frameCount % 60==0) {
    segundos ++;
  }
  
  if (segundos > 6 && segundos < 14) {
    image(tdp1, posX, posY);
    
    posXizq +=2;
    fill(0);
    text("director\nGiancarlo Volpe", posXizq, 180, width, 150);
  }
  
  else if (segundos >= 14 & segundos < 22) {
    image(tdp2, posX - 30, posY);
    
    posYsubir -=2;
    fill(0);
    text("directores de animación\nCarlyle Wilson\nMeruan Salim", 250, posYsubir, width, 150);
  }
  
  else if (segundos >= 22 & segundos < 30) {
    image(tdp3, posX, posY);
    
    posYbajar +=2;
    fill(0);
    text("productor\nLauren Topal", 375, posYbajar, width, 150);
  }
  
  else if (segundos >= 30 & segundos < 38) {
    image(tdp4, posX + 8, posY);
    
    posYsubir2 -=2;
    fill(0);
    text("coproductores\nDevon Giehl\nIain Hendry\nNeil Mukhopadhyay", 325, posYsubir2, width, 150);
  }
  
  else if (segundos >= 38 & segundos < 46) {
    image(tdp5, posX + 8, posY);
    
    posYbajar2 +=2;
    fill(0);
    text("música por\nFrederik Wiedmann", 345, posYbajar2, width, 150);
  }
  
  else if (segundos >= 46){
    image(tdp, width/2, posY + 70);
    
    fill(255);
    noStroke();
    ellipse(width/2, 480, 550, 100);
    fill(0);
    text("toca cualquier tecla para reiniciar", width/7, 450, width, 50);
  }
}

  void keyPressed () {
  segundos = 0;
  }
