class Guns{
//PVector pos;
float theta;
int elapse = 10;



Guns(){
//pos = new PVector();
theta = 0;



}

void direct(){
  if (b.vel.y == (-2)){
    elapse +=2;
  println("hhhhhhhhhhhhhhhhhhhhhhh");
  }
  if (keys['A'])
  {
    theta -= 0.08;
  }
  if (keys['D'])
  {
    theta += 0.1;
  }
  if (keys[' ']  && elapse >12)
  {
    Bullets amo1 = new Bullets();
    amo1.loc.x = bar.pos.x + bar.len.x / 2;
    amo1.loc.y = bar.pos.y + 15;
    amo1.forw.x = sin(g.theta);
    amo1.forw.y = -cos(g.theta);
    amo1.forw.mult(amo1.speed);
    amo1.loc.add(amo1.forw);
    bullet.add(amo1);
    elapse  -= 10 ;
  }




}

void render(){
  pushMatrix();
    translate(bar.pos.x + bar.len.x / 2, bar.pos.y + 15 );
    println(theta);
    rotate(theta);
     fill(0,#1F7B9B);
     fill(180);
    stroke(255);
    line(0, 0,0, 0- 35);
    ellipse(0, 0, 15,15 );
    //line(bar.pos.x + bar.len.x / 2, bar.pos.y + 15,bar.pos.x + bar.len.x / 2 , bar.pos.y - 20);
    //ellipse(bar.pos.x + bar.len.x / 2, bar.pos.y + 15, 15,15 );
popMatrix();




}







}