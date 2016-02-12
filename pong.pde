void mouseClicked()
{
  if ((mouseX > left) && (mouseX < left + bWidth) && (mouseY > top) && (mouseY < top + bHeight)) 
  {
    toggled = ! toggled;
  }  
}
Ball b;
Ball b2;
Ball b3;
Bar bar;
Guns g;
float centX, centY;
float left, top, bWidth, bHeight;
float ballX;
float ballY;
float dirX;
float dirY;
float ballSize = 20;
float ballRadius = ballSize / 2;

boolean toggled;
boolean gameOver = false;
int time = 300;

int score = 0;
//Bullets amo;
Object o;
int lx = 0;
int ly = 600;

ArrayList<Bubble> object = new ArrayList <Bubble>();

ArrayList<Bullets> bullet = new ArrayList<Bullets>();

boolean[] keys = new boolean[512];

void keyPressed()
{
  keys[keyCode] = true;
}

void keyReleased()
{
  keys[keyCode] = false;
}

void setup(){
size (700,700);
noStroke();
b3 = new Ball(60, 60, 60);
b2 = new Ball(100, 100, 80);
b = new Ball();
bar = new Bar();
g = new Guns();
//amo = new Bullets();
o = new Object();
  centX = width / 2;
  centY = height / 2;
  
  bWidth = width * 0.3f;
  bHeight = height * 0.3f;
  left = centX - bWidth / 2;
  top = centY - bHeight / 2;  
  toggled = true;
  
  ballX = 200;
  ballY = 400;
  dirX = 1;
  dirY = 1;

}




void draw(){
  if (toggled){
  
    background(0);
  
  if (toggled)
  {
    stroke(255,0,0);
    fill(255,0,0);
  }
  else
  {
    if ((mouseX > left) && (mouseX < left + bWidth) && (mouseY > top) && (mouseY < top + bHeight)) 
    {
      stroke(0,0,255);
      fill(0,0,255);    
    }
    else
    {
      stroke(128);
      fill(128);    
    }    
  }
  
  //rect(left, top, bWidth, bHeight);
  textSize(50);
  textAlign(CENTER);
  text("PLAY", width/ 2, height/ 2);
  
  
  // The ball
  
  stroke(255);
  fill(255);
  
  ellipse(ballX, ballY, ballSize, ballSize);
  
  ballX += dirX;
  ballY += dirY;
  if ((ballX > (width - ballRadius)) || (ballX < ballRadius))
  {
    dirX = - dirX;
  }
  if ((ballY > (height - ballRadius)) || (ballY < ballRadius))
  {
    dirY = - dirY;
  }
  
}// end of first screen
  
  
  if (!toggled){
   fill(0);
  noStroke();
  background(#1F7B9B);
  strokeWeight(2);
  textSize(15);
  textAlign(LEFT);
    text("score: " + score, 25, 25);
    noStroke();
    
    
  if (frameCount % time == 0){
  Bubble amo2 = new Bubble();
  object.add(amo2);
  }
  
  
  
  b3.bounce();
 // b3.display();
  b2.bounce();
  //b2.display();
  b.bounce();
  b.display();
  bar.move();
  bar.render();
  g.render();
  g.direct();
  //o.move();
  //o.display();
  
  
  for (int i = object.size()-1 ; i >= 0 ; i--){
    
    Bubble square = object.get(i);
    square.move();
    square.display();
    
    
  
  }
  
  for (int i = bullet.size()-1 ; i >= 0 ; i--){
    
    Bullets amo = bullet.get(i);
    amo.move();
    amo.display();
  
  }
  
  noStroke();
  strokeWeight(0);
  stroke(255);
  line(lx, ly, width, ly );

  Collisions();
  }// end of second screen

  if (gameOver == true){
  background(0);
  noStroke();
  fill(0, 10);
  rect(0, 0, width, height);
  
  fill(255);
  //fill(random(255),random(255), random(255));
  ellipse(random(width), random(height), 20, 20);
  //fill(255);
  fill(random(255),random(255), random(255));
  ellipse(random(width), random(height), 20, 20);
  
  fill(255,0,0);
  textSize(50);
  textAlign(CENTER);
  text("GAME OVER", width/ 2, height/ 2);
  
  }

}

public void Collisions()
{
 for(int i = bullet.size() - 1 ; i >= 0   ;i --)
 {  
     println("keep going");
    Bullets go = bullet.get(i);
    if (go instanceof Bullets)
    {
      if (go.loc.x <= 10 || go.loc.x >= width - 10 || go.loc.y <= 10 || go.loc.y >= height -10 ){
        bullet.remove(go);
      
      }
      for(int j = object.size() - 1 ; j >= 0   ;j --)
      {
        Bubble other = object.get(j);
        if (other instanceof Bubble) // Check the type of a object
        {
          //circle collisions
          if (go.loc.dist(other.pos) < 22)
          {
            score ++;
            if (time > 50){
            time -= 25;
            }
            object.remove(other);
            bullet.remove(go);
}
        }
      }
    }
 } 
}
