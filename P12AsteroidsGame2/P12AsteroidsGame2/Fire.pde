class Fire extends GameObject {
  
  int t; //transparency
  
  Fire() {
    lives = 1;
    size = 10;
    t = 255;
    //loc = new PVector(myShip.loc.x, myShip.loc.y);
    loc = myShip.loc.copy();
    vel = myShip.dir.copy();
    vel.rotate(PI+random(-0.3, 0.3));
    vel.setMag(random(0, 5));
  }
  
  void show() {
    noStroke();
    fill(255, 0, 0, t);
    circle(loc.x, loc.y, size);
  }
  
  void act() {
    super.act();
    t = t-10;
    if (t <= 0) lives = 0;
  }
  
}
