class Object {

float x;
float y;
int j;
int k;
float w;
float halfw;
float radius;
float speedx;
float speedy;
PVector pos;


Object(){
  
  x = random(5, width-w);
  y = random(10, 450);
  j = 0;
  k = 0;
  w = 20;
  halfw = w * 0.5;
  radius = (sqrt(pow(w, 2) + pow(w, 2)));
  speedx = random(-1, 1);
  speedy = random(-1, 1);
pos = new PVector(0,0);

}





    


void display(){
  strokeWeight(0);
  stroke(255);
  //rect(x, y, w, w);
  noFill();
  //ellipse(x + halfw, y + halfw, radius, radius );
  

}
void move(){

 x += speedx;
   
  
  
  
  if ((x + halfw) - radius/2 < 0 ||(x + halfw) + radius/2 > width){
   speedx *= (-1);
}

y += speedy;

if ((y + halfw) - radius/2 < 0 || (y + halfw) + radius/2 > height){
    speedy *= (-1);
}


if ((y + halfw )+ radius/2 > bar.pos.y && (x + halfw) > bar.pos.x && (x + halfw) < bar.pos.x + bar.len.x){
  speedy *= (-1);
}
pos.x= x + halfw;
pos.y = y+halfw;
}

}

if ((y + halfw )+ radius/2 > bar.pos.y && (x + halfw) > bar.pos.x && (x + halfw) < bar.pos.x + bar.len.x){
  speedy *= (-1);
}
}


    


void display(){
  strokeWeight(0);
  stroke(255);
  rect(x, y, w, w);
  noFill();
  ellipse(x + halfw, y + halfw, radius, radius );
  

}
}

}
