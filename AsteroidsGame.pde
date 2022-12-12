//your variable declarations here
Spaceship ship = new Spaceship();
Star[] sr = new Star[300];
ArrayList<Asteroid> blob = new ArrayList<Asteroid>();
ArrayList<Bullet> shots = new ArrayList<Bullet>();
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
   if (dist((float)blob.get(i).getX(), (float)blob.get(i).getY(), (float)ship.getCenterX(), (float)ship.getCenterY())< 20){
     blob.remove(i);
   }
  }
  for(int i = 0; i < shots.size(); i++){
    shots.get(i).move();
    shots.get(i).show();
  }
  for (int i = 0; i < shots.size(); i++){
    for(int k = 0; k < blob.size(); k++){
      if (dist((float)shots.get(i).getX(), (float)shots.get(i).getY(),(float)blob.get(k).getX(),(float)blob.get(k).getY()) < 20){
        blob.remove(k);
        shots.remove(i);
        break;
      }
    }
  }
   

    
 ship.move();
 ship.show();
 
}

public void keyPressed()
{
 if (key=='w')
  ship.accelerate(.5);
 else if (key=='a')
  ship.turn(-10);
 else if (key=='s')
  ship.accelerate(-.5);
 else if (key=='d')
  ship.turn(10);
 else if (key == 'h')
  ship.hyperspace();
 else if (key == ' ')
   shots.add(new Bullet(ship));
}
