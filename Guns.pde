class Guns{
PVector pos;


Guns(){
pos = new PVector();



}

void direct(){



}

void render(){
 fill(0,#1F7B9B);
 fill(180);
stroke(255);
line(bar.pos.x, bar.pos.y,bar.pos.x , bar.pos.y - 20);
ellipse(bar.pos.x, bar.pos.y, 15,15 );
line(bar.pos.x + bar.len.x, bar.pos.y, bar.pos.x + bar.len.x, bar.pos.y - 20);
ellipse(bar.pos.x + bar.len.x, bar.pos.y, 15, 15);



}







}