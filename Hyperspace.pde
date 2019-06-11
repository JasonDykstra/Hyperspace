Star s = new Star(1);  
float speed;
float speedDerivative;

void setup(){
  size(800, 700, P3D);
  speed = 1;
  speedDerivative = 0.3;
}


void draw(){
  translate(width/2, height/2);
  background(0);
  frameRate(60);
  s.star(speed);
  s.setFrequency(speed);
  speed += speedDerivative;
  
  if(speed <= 5 && speedDerivative < 0){
    speed = 5;
  }
  
  if(speed >= 80){
    speedDerivative = -0.3;
  }
  
  if(speed <= 10 && speedDerivative > 0){
    speedDerivative = 0.1; 
  } else if(speed <= 10 && speedDerivative < 0){
    speedDerivative = -0.1;
  } else if(speed > 10 && speedDerivative > 0){
    speedDerivative = 0.3;
  } else if(speed > 10 && speedDerivative < 0){
    speedDerivative = -0.3;
  }
  
}