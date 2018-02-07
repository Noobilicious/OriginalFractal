void setup(){
  size(600, 600); 
  frameRate(180);
}
float b = 0;
void draw(){
  myFractal(300, 300, 200, 300);
  b = b + 0.15;
}

void myFractal(float x, float y, int s, int a){
  if(s <= 20){
    strokeWeight(0);
    fill(255, 0, 0);
    ellipse(x + (float)(a*Math.cos(PI/6 + b)), y + (float)(a*Math.sin(PI/6 + b)), s, s);
    fill(0, 255, 0);
    ellipse(x + (float)(a*Math.cos(PI/2 + b)), y + (float)(a*Math.sin(PI/2 + b)), s, s);
    fill(0, 0, 255);
    ellipse(x + (float)(a*Math.cos(5*PI/6 + b)), y + (float)(a*Math.sin(5*PI/6 + b)), s, s);
    fill(255, 255, 0);
    ellipse(x + (float)(a*Math.cos(7*PI/6 + b)), y + (float)(a*Math.sin(7*PI/6 + b)), s, s); 
    fill(255, 0, 255);
    ellipse(x + (float)(a*Math.cos(9*PI/6 + b)), y + (float)(a*Math.sin(9*PI/6 + b)), s, s); 
    fill(0, 255, 255);
    ellipse(x + (float)(a*Math.cos(11*PI/6 + b)), y + (float)(a*Math.sin(11*PI/6 + b)), s, s); 
  }
  else{
    myFractal(x + (float)(a*Math.cos(PI/6))/2, y + (float)(a*Math.sin(PI/6))/2, s/2, s/2); 
    myFractal(x + (float)(a*Math.cos(PI/2))/2, y + (float)(a*Math.sin(PI/2))/2, s/2, s/2); 
    myFractal(x + (float)(a*Math.cos(5*PI/6))/2, y + (float)(a*Math.sin(5*PI/6))/2, s/2, s/2); 
    myFractal(x + (float)(a*Math.cos(7*PI/6))/2, y + (float)(a*Math.sin(7*PI/6))/2, s/2, s/2); 
    myFractal(x + (float)(a*Math.cos(9*PI/6))/2, y + (float)(a*Math.sin(9*PI/6))/2, s/2, s/2); 
    myFractal(x + (float)(a*Math.cos(11*PI/6))/2, y + (float)(a*Math.sin(11*PI/6))/2, s/2, s/2);
  }  
}