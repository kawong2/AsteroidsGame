class Bullet extends Floater
{
    public Bullet (Spaceship ship){
    myCenterX = ship.getX();
    myCenterY = ship.getY();
    myXspeed = ship.getx();
    myYspeed = ship.gety();
    myPointDirection = ship.getpointDirection();
    accelerate(.9);
    }
  public void show(){
    fill(75,115,149);
    ellipse((float)myCenterX, (float)myCenterY,5,5);
  }
 public void move ()   
  {            
    myCenterX += myXspeed;    
    myCenterY += myYspeed;
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
     return myCenterY;
  }
 }
