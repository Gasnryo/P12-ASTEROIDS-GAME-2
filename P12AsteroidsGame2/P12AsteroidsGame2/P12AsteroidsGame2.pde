//Grayson Lilly
//1-4
//Asteroids Game
int mode;

//Intro Gif
PImage[] asteroidgif;
int numberOfFramesAsteroid;
int fgif;

//Font
PFont Origin;

boolean upkey, downkey, leftkey, rightkey, spacekey;
Ship myShip;
ArrayList<GameObject> myObjects;

void setup() {
  //Intro Gif
  numberOfFramesAsteroid = 50;
  asteroidgif = new PImage[numberOfFramesAsteroid];
  
  //Font
  Origin = createFont("Origin.ttf", 100);
  
  int i = 0;
  while (i < numberOfFramesAsteroid) {
    asteroidgif[i] = loadImage("frame_"+i+"_delay-0.06s.gif");
   i=i+1; 
  }
  
  mode = 0;
  size(800, 600, FX2D);
  imageMode(CENTER);
  myShip = new Ship();
  myObjects = new ArrayList<GameObject>();
  myObjects.add(myShip);
  myObjects.add(new Asteroid());
  myObjects.add(new Asteroid());
  myObjects.add(new Asteroid());
}

void draw() {
  if (mode == 0) {
    intro();
  } else if (mode == 1) {
    game();
  }
}
