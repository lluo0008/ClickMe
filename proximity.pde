float x,vx;
float y,vy;
float easing = 100.05;
float homex, homey, x0,y0,x1,y1,distx,disty,d,px,py,fx,fy,mag, xDir, yDir;

void setup() {
  size(1000, 1000); 
  noStroke(); 
  x=500;
  y=500;
  x0=500;
  y0=500;
  xDir = 1;
  yDir = 1;
  vx = random(-2,2);
  vy = random(-2,2);
}

void draw() { 
  background(51);
  ellipse(x, y, 40,40);
  mag=1000;
  
  homex=x0;
  homey=y0;
  
  x1=mouseX;
  y1=mouseY;
  
  distx=x1-x0;
  disty=y1-y0;
  
  //d=sqrt(pow(distx,2)+pow(disty,2));
  d = dist(mouseX, mouseY, x0, y0);
  
  if (x + 20 >= width - 1 || x - 20 <= 1) 
  {
    xDir *= -1;
  }


  if (y + 20 >= height - 1 || y - 20 <= 1)
  {
    yDir *= -1;
  }
  
  
  px=x0-((distx/d)*mag)/d;
  py=y0-((disty/d)*mag)/d;
  

  fx=(fx+(homex-x0)/2)/2.1;
  fy=(fy+(homey-y0)/2)/2.1;
  
  x=px+fx+vx*xDir;
  y=py+fy+vy*yDir;
  
  
  
  
  

}
