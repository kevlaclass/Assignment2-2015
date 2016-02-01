class Bullets{

  PVector forward;
  PVector speed;
  
Bullets(){
  
  forward = new PVector();
  forward.x = sin(theta);
  forward.y = -cos(theta);
  speed = new PVector();
  
  
}





void display(){
  
  fill(180);
  ellipse(bar.pos.x + bar.len.x / 2, bar.pos.y -20, 5, 5);



}







}