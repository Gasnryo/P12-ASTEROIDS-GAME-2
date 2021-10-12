void intro() {
  //Display Gif
  imageMode(CORNERS);
  image(asteroidgif[fgif], 0, 0, width, height);
  if (frameCount % 2 == 0) fgif = fgif+1;
  if (fgif == numberOfFramesAsteroid) fgif = 0;
  //background(0);
 
 //Text
 textAlign(CENTER, CENTER);
 textFont(Origin);
 textSize(100);
 fill(0, 100, 255);
 text("ASTEROIDS", width/2, height/2);
 text(int(frameRate), width/2, height*0.75);
 
 
 
}
