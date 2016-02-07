class Bullets extends Guns{
  
PVector loc;
PVector forw;
float speed;



Bullets(){
 
  loc = new PVector();
  forw = new PVector();
  speed = 10;
  
}

void move(){

println("g", g.theta);

forw.x = sin(g.theta);
forw.y = -cos(g.theta);

forw.mult(speed);

println(forw.x, forw.y, "loc",loc.x, loc.y);

loc.add(forw);
 
}


void display(){
  
    loc.x = bar.pos.x + bar.len.x / 2;
    loc.y = bar.pos.y + 15;
    pushMatrix();
    translate(loc.x, loc.y );
     fill(180,20,150);
     stroke(0);
     ellipse(0, 0, 20,20 );
     popMatrix();


}


}