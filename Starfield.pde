partSquares [] partis = new partSquares [500];
partCircle circ = new partCircle();

void setup(){
  size(1000,1000);
  for(int i = 0; i < partis.length; i++){
    partis[i] = new partSquares();
  }
}

void draw(){
  background(0);
  for(int i = 0; i < partis.length; i++){
    partis[i].move();
    partis[i].show();
      circ.move();
      circ.show_c();
    
  }
}

class partCircle extends partSquares{
  partCircle(){
    myX = (int)(Math.random()*10)+480;
    myY = (int)(Math.random()*10)+480;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = (Math.random()*.003);
  }
  
  void show_c(){
    fill(255);
    ellipse((float)myX, (float)myY, 15,15);
}
}

class partSquares{
  double myX, myY, myAngle, mySpeed, mySize; 
 
  partSquares(){ // Constructor
    myX = (int)(Math.random()*10)+480;
    myY = (int)(Math.random()*10)+480;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = (Math.random()*2);
    mySize = 20;
  }
  
  
void move(){
  myX += Math.cos(myAngle)*mySpeed;
  myY += Math.sin(myAngle)*mySpeed;
}

void show(){
  stroke(57, 181, 0);
  fill(20);
  strokeWeight(1);
  rect((float)myX,(float) myY,(float) mySize,(float)mySize);
}
}
