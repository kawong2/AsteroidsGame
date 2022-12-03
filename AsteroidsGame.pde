//your variable declarations here
Spaceship ship = new Spaceship();
Star[] sr = new Star[275];
ArrayList<Asteroid> blob = new ArrayList<Asteroid>();
public void setup()
{
 size(500,500);
 background(0);
 for (int i = 0; i < sr.length; i++) 
 {
  sr[i] = new Star();
  }
  for(int i = 0; i < 26; i++){
    blob.add(new Asteroid());
  }
}

public void draw()
{
 background(0);
 for (int i = 0; i < sr.length; i++) {
 sr[i].show();
}
  for (int i = 0; i < blob.size(); i++) {
    blob.get(i).move();
    blob.get(i).show();
    float myDist = dist((float)blob.get(i).getX(), (float)blob.get(i).getY(), (float)ship.getCenterY(), (float)ship.getYspeed());
    if (myDist < 20) {
      blob.remove(i);
    }

}
 color(255);
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
 if (key == 'h')
  ship.hyperspace();
}
