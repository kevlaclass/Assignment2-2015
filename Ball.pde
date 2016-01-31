class Ball{
  
PVector pos;
PVector vel;
float x;
float y;
float radius;
float xspeed;
float yspeed;

Ball(float x, float y, float r){

 radius = r;
 pos = new PVector(width/3, height/3);
 vel = new PVector(1,5);
  }
  
 Ball(){
   
   this(width/3, height/3, 20);
 }
  
void bounce(){
pos.add(vel);
if (pos.x - radius < 0 || pos.x + radius > width){
vel.x *= (-1);
}

if (pos.y - radius < 0 || pos.y + radius > width){
vel.y *= (-1);
}

}

void display(){

  fill(255);
  ellipse(pos.x, pos.y, radius, radius);

}











}