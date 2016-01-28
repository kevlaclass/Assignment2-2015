class Ball{
  
PVector pos;
float x;
float y;
float radius;
float xspeed;
float yspeed;

Ball(float x, float y, float r){

 pos = new PVector(x, y);
 radius = r;
 xspeed = 1;
 yspeed = 1;
  }
  
 Ball(){
   
   this(width/3, height/3, 20);
 }
  
void bounce(){
pos.x += xspeed;
if (pos.x - radius < 0 || pos.x + radius > width){
xspeed *= (-1);
}

pos.y += yspeed;
if (pos.y - radius < 0 || pos.y + radius > width){
yspeed *= (-1);
}

}

void display(){

  fill(255);
  ellipse(pos.x, pos.y, radius, radius);

}











}