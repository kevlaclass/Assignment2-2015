class Guns{
PVector pos;
float theta;



Guns(){
pos = new PVector();
theta = 0;



}

void direct(){
if (keyPressed){
  if (key == 'a')
  {
    theta -= 0.1;
  }
  if (key == 'd')
  {
    theta += 0.1;
  }

}


}

void render(){
translate(bar.pos.x + bar.len.x / 2, bar.pos.y + 15 );
rotate(theta);
 fill(0,#1F7B9B);
 fill(180);
stroke(255);
line(0, 0,0, 0- 35);
ellipse(0, 0, 15,15 );
//line(bar.pos.x + bar.len.x / 2, bar.pos.y + 15,bar.pos.x + bar.len.x / 2 , bar.pos.y - 20);
//ellipse(bar.pos.x + bar.len.x / 2, bar.pos.y + 15, 15,15 );




}







}