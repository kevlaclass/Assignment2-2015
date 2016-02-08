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

ArrayList<Bullets> bullet = new ArrayList<Bullets>();

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
  if (keyPressed){
    if (key == ' '){
      amo.fire2 = false;
    }
  }
  if (amo.fire2 == false){
  amo.move();
  amo.display();
  }

  
  
  
  //for(int i = bullet.size() - 1 ; i >= 0   ;i --)
  //{
  //  Bullets amo = bullet.get(i);
  //  amo.move();
  //  amo.display();
  //}
  
  noStroke();


}