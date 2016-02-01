class Bar{
  
  PVector pos;
  PVector len;
  
  
  Bar(float rheight, float rwidth){
  
    pos = new PVector(0, height - (height/7));
    len = new PVector(rwidth, rheight);
    
  }
  
  Bar(){
  
    this (height/20, width/ 7);
  }
  
  void move(){
  
  
  
  }
  
  void render(){
    
    strokeWeight(4);
    stroke(255);
    fill(#1F7B9B);
    //strokeWeight(4);
    rect(pos.x, pos.y, len.x, len.y, 6, 6, 6, 6);
    noStroke();
  }







}