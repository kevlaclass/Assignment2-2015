Ball b;
Ball b2;
Ball b3;
Bar bar;
Guns g;
Bullets amo;

ArrayList<Bullets> bullet = new ArrayList<Bullets>();

boolean[] keys = new boolean[512];

void keyPressed()
{
  keys[keyCode] = true;
}

void keyReleased()
{
  keys[keyCode] = false;
}

void setup(){
size (700,700);
noStroke();
b3 = new Ball(60, 60, 60);
b2 = new Ball(100, 100, 80);
b = new Ball();
bar = new Bar();
g = new Guns();
amo = new Bullets();

for (int i = 0; i< 10; i++){
  bullet.add(new Bullets());
}

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
  
  for (int i = bullet.size()-1 ; i >= 0 ; i--){
    
    Bullets amo = bullet.get(i);
    println("here");
    amo.move();
    amo.display();
  
  }
  
  //if (keyPressed){
  //  if (key == ' '){
  //    amo.fire2 = false;
  //  }
  //}
  //if (amo.fire2 == false){
  //amo.move();
  //amo.display();
  //}

  
  
  
  //for(int i = bullet.size() - 1 ; i >= 0   ;i --)
  //{
  //  Bullets amo = bullet.get(i);
  //  amo.move();
  //  amo.display();
  //}
  
  noStroke();


}