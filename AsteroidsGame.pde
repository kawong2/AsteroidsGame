//your variable declarations here
Spaceship ship = new Spaceship();
Star[] sr = new Star[275];
public void setup()
{
 size(500,500);
 background(0);
 for (int i = 0; i < sr.length; i++) 
 {
  sr[i] = new Star();
  }
}

public void draw()
{
 background(0);
 for (int i = 0; i < sr.length; i++) {
 sr[i].show();
}
 color(255);
 text("Center X: " + ship.myCenterX, 25, 30);
 text("Center Y: " + ship.myCenterY, 25, 45);
 text("Speed X: " + ship.myXspeed, 25, 60);
 text("Speed Y: " + ship.myYspeed, 25, 75);
 text("Direction: " + ship.myPointDirection, 25, 90);
 ship.move();
 ship.show();
}

public void keyPressed()
{
 if (key=='w')
  ship.accelerate(.5);
 if (key=='a')
  ship.turn(-10);
 if (key=='s')
  ship.accelerate(-.5);
 if (key=='d')
  ship.turn(10);
 if (key == ' ')
  ship.hyperspace();
}
