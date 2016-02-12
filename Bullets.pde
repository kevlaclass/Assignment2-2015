class Bullets extends Guns{
  
PVector loc;
PVector forw;
float speed;
boolean fire;
boolean fire2;
float theta2;
float rad;
float halfw = rad * 0.5f;


Bullets(){
 
  loc = new PVector();
  forw = new PVector();
  speed = 10;
  fire = false;
  fire2 = true;
  rad = 10;
  
  
}

void move(){
  if(fire == false){

    loc.x = bar.pos.x + bar.len.x / 2;
    loc.y = bar.pos.y + 15;
    theta2 = g.theta;
    

  }
 
  
  forw.x = sin(theta2);
  forw.y = -cos(theta2);


  forw.mult(speed);


  
  loc.add(forw);
  fire = true;
 
}


void display(){
  
   
    pushMatrix();
    translate(loc.x, loc.y );
     fill(180,20,150);
     stroke(0);
     strokeWeight(0);
     ellipse(0, 0, 10,10 );
     popMatrix();


}


}
