Ball b;
Ball b2;
Ball b3;
Bar bar;
Guns g;

int score = 0;
//Bullets amo;
Object o;
int lx = 0;
int ly = 600;

ArrayList<Object> object = new ArrayList <Object>();

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
//amo = new Bullets();
o = new Object();

}




void draw(){
  noStroke();
  background(#1F7B9B);
  if (frameCount % 500 == 0){
  Object amo2 = new Object();
  object.add(amo2);
  }
  
  
  
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
  //o.move();
  //o.display();
  
  
  for (int i = object.size()-1 ; i >= 0 ; i--){
    
    Object square = object.get(i);
    square.move();
    square.display();
    
    
  
  }
  
  for (int i = bullet.size()-1 ; i >= 0 ; i--){
    
    Bullets amo = bullet.get(i);
    amo.move();
    amo.display();
  
  }
  
  noStroke();
  strokeWeight(0);
  stroke(255);
  line(lx, ly, width, ly );

  Collisions();

}

public void Collisions()
{
 for(int i = bullet.size() - 1 ; i >= 0   ;i --)
 {  
     println("keep going");
    Bullets go = bullet.get(i);
    if (go instanceof Bullets)
    {
      for(int j = object.size() - 1 ; j >= 0   ;j --)
      {
        Bubble other = object.get(j);
        if (other instanceof Bubble) // Check the type of a object
        {
          //circle collisions
          if (go.loc.dist(other.pos) < go.halfw + other.halfw)
          {
            score ++;
            object.remove(other);
}
        }
      }
    }
 } 
}
