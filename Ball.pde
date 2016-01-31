class Ball{
  
PVector pos;
PVector vel;
float x;
float y;
float radius;
float xspeed;
float yspeed;
float halfw;
float theta;

Ball(float x, float y, float r){

 radius = r;
 pos = new PVector(width/3, height/3);
 vel = new PVector(1,2);
 halfw = r * 0.5;
 theta = 0;
  }
  
 Ball(){
   
   this(width/3, height/3, 20);
 }
  
void bounce(){
pos.add(vel);
if (pos.x - radius/2 < 0 || pos.x + radius/2 > width){
vel.x *= (-1);
}

if (pos.y - radius/2 < 0 || pos.y + radius/2 > height){
vel.y *= (-1);
}

}

void display(){
  theta += 0.5;
  pushMatrix();
  translate(pos.x, pos.y);
  fill(255);
  noStroke();
  ellipse(0, 0, radius, radius);
  stroke(0);
  rotate(theta);
  line(0- halfw, 0, 0 + halfw, 0);
  line(0, 0 + halfw, 0, 0- halfw);
  popMatrix();
}











}