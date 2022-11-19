class Spaceship extends Floater  
{   
 public Spaceship() {
  corners = 4;
  xCorners = new int[]{-8, 16, -8, -2};
  yCorners = new int[]{-8, 0, 8, 0};
  myColor = color((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
  myCenterX = myCenterY = 250;
  myXspeed = myYspeed = 0;
  myPointDirection = 90;
}
public void hyperspace(){
  myXspeed = myYspeed = 0;
  myCenterX =(int)(Math.random() * 500);
  myCenterY = (int)(Math.random() * 500);
  myPointDirection = (int)(Math.random() * 360);
}
public double getCenterX(){
  return myCenterX;
}
public double getCenterY(){
  return myCenterY;
}
public double getXspeed(){
  return myXspeed;
}
public double getYspeed(){
  return myYspeed;
}
public double getPointDirection(){
  return myPointDirection;
 }
}
