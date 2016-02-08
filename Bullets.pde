class Bullets extends Guns{
  
PVector loc;
PVector forw;
float speed;
boolean fire;
boolean fire2;


Bullets(){
 
  loc = new PVector();
  forw = new PVector();
  speed = 10;
  fire = false;
  fire2 = true;
  
  
}

void move(){
  if(fire == false){

    loc.x = bar.pos.x + bar.len.x / 2;
    loc.y = bar.pos.y + 15;

  }
  //if (keyPressed)
//{
//  if (key == ' '){
  
  
forw.x = sin(g.theta);
forw.y = -cos(g.theta);

forw.mult(speed);


  
  loc.add(forw);
  fire = true;
  //}
//}
 


 
}


void display(){
  
   
    pushMatrix();
    translate(loc.x, loc.y );
     fill(180,20,150);
     stroke(0);
     ellipse(0, 0, 20,20 );
     popMatrix();


}


}