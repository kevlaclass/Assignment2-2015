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


}

void move(){

 //while (j == 0){
   
 // j = (int)(random(-1, 1));
  
 //}
 
 //x += j;
 x += speedx;
   
   //while (k == 0){
   
 // k = (int)(random(-1, 1));
  //}
  //y += k;
  
  
  if ((x + halfw) - radius/2 < 0 ||(x + halfw) + radius/2 > width){
   speedx *= (-1);
////theta *= (-1);
}

y += speedy;
//
if ((y + halfw) - radius/2 < 0 || (y + halfw) + radius/2 > height){
    speedy *= (-1);
////theta *= (-1);
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