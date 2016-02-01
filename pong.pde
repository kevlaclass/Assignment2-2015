Ball b;
Ball b2;
Ball b3;
Bar bar;

void setup(){
size (700,700);
noStroke();
b3 = new Ball(60, 60, 60);
b2 = new Ball(100, 100, 80);
b = new Ball();
bar = new Bar();


}

void draw(){
  noStroke();
  background(#1F7B9B);
  
  b3.bounce();
 // b3.display();
  b2.bounce();
  //b2.display();
  b.bounce();
  b.display();
  bar.render();
  noStroke();


}