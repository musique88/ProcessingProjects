void setup(){
  size(100,100);
  
}

void draw(){
  if (IsMouseIn()){fill(128);
  }else{fill(255);}
  if (Clicked()){fill(0); Boxed();}
  if (value){fill(0);}
  rect(0,0,10,10);
}
boolean value = false;
int count = 0;
void Boxed(){
  count = count + 1;
  value = (count%2 == 0);
  println(count);
}

boolean Clicked() {
  boolean i = true;
  if(i == true){
    return IsMouseIn() && mousePressed;}else{
    return false;}
  i = false;
}

boolean IsMouseIn() {
  return (
  0 <= mouseY &&
  0 <= mouseX &&
  mouseY <= 10 &&
  mouseX <=10);
}
