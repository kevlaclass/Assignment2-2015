class Bullets extends Guns{
  
PVector loc;
PVector forw;
float speed;



Bullets(){
 
  loc = new PVector();
  forw = new PVector();
  speed = 2;
  
}

void move(){
  
loc.x = bar.pos.x + bar.len.x / 2;
loc.y = bar.pos.y + 15;

forw.mult(speed);

println("g", g.theta);
forw.x = sin(g.theta);
forw.y = -cos(g.theta);

println(forw.x, forw.y, "loc",loc.x, loc.y);


while(loc.x > 0 || loc.y > 0){
  loc.add(forw);
}
  
}



void display(){
    pushMatrix();
    translate(loc.x, loc.y );
     rotate(theta);
     fill(180,20,150);
     stroke(0);
     ellipse(0, 0, 20,20 );
     popMatrix();


}







}