Ball b;
Ball b2;
Ball b3;
Bar bar;
Guns g;
Bullets amo;

void setup(){
size (700,700);
noStroke();
b3 = new Ball(60, 60, 60);
b2 = new Ball(100, 100, 80);
b = new Ball();
bar = new Bar();
g = new Guns();
amo = new Bullets();


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
  bar.move();
  bar.render();
  g.render();
  g.direct();
  amo.move();
  amo.display();
  
  noStroke();


}