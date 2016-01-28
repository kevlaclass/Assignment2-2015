Ball b;
Bar bar;

void setup(){
size (700,700);
noStroke();
b = new Ball();
bar = new Bar();


}

void draw(){
  noStroke();
  background(#1F7B9B);
  b.bounce();
  b.display();



}