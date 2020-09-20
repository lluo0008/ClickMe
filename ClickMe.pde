int x, y;
float vX = 5, vY = 5;
float xDir, yDir;
float magnet = 500;
void setup()
{
  size(1920, 1080);
  //fullScreen(FX2D);
  background(255);
  rectMode(CENTER);
  x = width/2;
  y = height/2;
  xDir = 1;
  yDir = 1;
}


void draw()
{
  background(255);
  fill(100);
  ellipse(x, y, 100, 100);
  

  float distance = (dist(mouseX, mouseY, x, y));
  float distanceX = abs(x - mouseX);
  float distanceY = abs(y - mouseY);
  
  float accX = 0;
  float accY = 0;

  float start1 = 0, stop1 = width, start2 = 100, stop2 = 0;
  //vX = (start2 + (stop2 - start2) * ((distance - start1) / (stop1 - start1)));

  if (distance > 500) vX = map(distance, 0, width, 1, 0);
  else if (distance > 250) vX = map(distance, 0, width, 3, 0);
  else if (distance > 125) vX = map(distance, 0, width, 9, 0);
  else if (distance > 62.6) vX = map(distance, 0, width, 27, 0);
  else if (distance > 31.25) vX = map(distance, 0, width, 81, 0);
  else if (distance > 15.625) vX = map(distance, 0, width, 243, 0);
  else if (distance > 7.8125) vX = map(distance, 0, width, 729, 0);
  else if (distance > 3.90625) vX = map(distance, 0, width, 2187, 0);
  vY = vX;
  
  float powex = x - (distanceX / distance) * magnet / distance;
  float powey = y - (distanceY / distance) * magnet / distance;

  //border detection
  if (x + 50 >= width - 1 || x - 50 <= 1) 
  {
    xDir *= -1;
  }


  if (y + 50 >= height - 1 || y - 50 <= 1)
  {
    yDir *= -1;
  }

  x += vX * xDir;
  y += vY * yDir;
  println(vY);

  // rectMove 

  //if (dist(mouseX, mouseY, x, y) < 200)
  //{
  //  vX = 5;
  //  vY = 5;
  //}
}

float expMap(float value, float start1, float stop1, float start2, float stop2) 
{
  float outgoing = start2 + (stop2 - start2) * ((value - start1) / (stop1 - start1));
  String badness = null;

  if (outgoing != outgoing) {
    badness = "NaN (not a number)";
  } else if (outgoing == Float.NEGATIVE_INFINITY || outgoing == Float.POSITIVE_INFINITY) {
    badness = "infinity";
  }
  if (badness != null) {
    final String msg =
      String.format("map(%s, %s, %s, %s, %s) called, which returns %s", 
      nf(value), nf(start1), nf(stop1), 
      nf(start2), nf(stop2), badness);
    PGraphics.showWarning(msg);
  }
  return outgoing;
}
