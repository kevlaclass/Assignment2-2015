class Bullets extends Guns{
  
PVector loc;
PVector forw;
float speed;


Bullets(){
 
  loc = new PVector();
  forw = new PVector();
  speed = 2;
  
  
 
  
  
}





void display(){
  
    translate(loc.x, loc.y );
     rotate(theta);
     fill(180,20,150);
     stroke(0);
     ellipse(0, 0, 20,20 );


}

void move(){
 
forw.mult(speed);
forw.x = sin(g.theta);
forw.y = -cos(g.theta);

while(loc.x > 0 || loc.y > 0){
loc.x = bar.pos.x + bar.len.x / 2;
loc.y = bar.pos.y + 15;
}
  
}





}