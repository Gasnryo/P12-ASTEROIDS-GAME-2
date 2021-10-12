class Ship extends GameObject {

  PVector dir;
  int shotTimer, threshold;

  Ship() {
    lives = 3;
    loc = new PVector(width/2, height/2);
    vel = new PVector(0, 0);
    dir = new PVector(0, -0.1);
    shotTimer = threshold;
    threshold = 30;
  }

  void show() {
    pushMatrix();
    translate(loc.x, loc.y);
    rotate(dir.heading());
    noFill();
    stroke(255);
    strokeWeight(2);
    triangle(-25, -12.5, -25, 12.5, 25, 0);
    popMatrix();
  }

  void act() {
    super.act();
    
    //Speed limit
    if (vel.mag() > 5) vel.setMag(5);
    if (upkey == false) vel.setMag(vel.mag()*0.95);
    
    shotTimer++;
    
    if (upkey) {
      vel.add(dir);
      myObjects.add(new Fire());
    }
    if (downkey) vel.sub(dir);
    if (leftkey) dir.rotate(-radians(5));
    if (rightkey) dir.rotate(radians(5));
    if (spacekey && shotTimer >= threshold) {
      myObjects.add(new Bullet());
      shotTimer = 0;
    }
    
    //if (upkey == false && downkey == false) {
     //vel.setMag(vel.mag()*0.99999); 
    //}
  }
}
