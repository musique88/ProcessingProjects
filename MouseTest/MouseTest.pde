void setup(){
  size(100,100);
  
}

int colour;

void draw(){
  if (IsMouseIn()){fill(128);
  }else{fill(255);}
  if (value){fill(0);}
  mousePressed()
  
  rect(0,0,10,10);
}
boolean value = false;
int count = 0;

void Boxed(){
  count = count + 1;
  value = (count%2 == 0);
  println(count);
}

void mousePressed(){
  if(IsMouseIn()&&value==true){
    Boxed();
    colour = 0;
  }else{
    colour = 255;
  }
}

boolean IsMouseIn() {
  return (
  0 <= mouseY &&
  0 <= mouseX &&
  mouseY <= 10 &&
  mouseX <=10);
}
