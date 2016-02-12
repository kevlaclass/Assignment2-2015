class Guns
{
float theta;
int elapse;




Guns(){
theta = 0;
elapse = 10;

}

void direct(){
  if (b.vel.y == (-2) /*|| b.vel.x == (-1)*/){
    elapse +=2;
  }//end if
  if (keys['A'])
  {
    theta -= 0.08;
  }//end if
  if (keys['D'])
  {
    theta += 0.1;
    println(elapse);
  }//end if
  if (keys['W']  &&   frameCount % 5 == 0)
  {
    Bullets amo1 = new Bullets();
    amo1.loc.x = bar.pos.x + bar.len.x / 2;
    amo1.loc.y = bar.pos.y + 15;
    amo1.forw.x = sin(g.theta);
    amo1.forw.y = -cos(g.theta);
    amo1.forw.mult(amo1.speed);
    bullet.add(amo1);
    elapse  = 0 ;
  }//end if

}

void render(){
  pushMatrix();
    translate(bar.pos.x + bar.len.x / 2, bar.pos.y + 15 );
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
