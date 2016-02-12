

class Bar{
  
  float x;
  float y;
  PVector pos;
  PVector len;
  
  
  Bar(float rheight, float rwidth){
  
    pos = new PVector(0, height - (height/7));
    len = new PVector(rwidth, rheight);
     x = 0;
     y = height - (height/7);
    
  }
  
  Bar(){
  
    this (height/20, width/ 7);
  }
  
  void move(){
  
  pos.x = mouseX - len.x /2;
  
  }
  
  void render(){
    
    strokeWeight(4);
    stroke(255);
    fill(#1F7B9B);
    //strokeWeight(4);
    rect(pos.x, pos.y, len.x, len.y, 6, 6, 6, 6);
    //rect(x, y, len.x, len.y, 6, 6, 6, 6);
    noStroke();
  }







}
