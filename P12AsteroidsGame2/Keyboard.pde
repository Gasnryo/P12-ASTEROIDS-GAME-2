//void keyPressed() {
//  if (keyCode == UP) upkey = true;
//  if (keyCode == DOWN) downkey = true;
//  if (keyCode == LEFT) leftkey = true;
//  if (keyCode == RIGHT) rightkey = true;
//  if (key == ' ') spacekey = true;
//}

void keyPressed() {
  if (key == 'W') upkey = true;
  if (key == 'w') upkey = true;
  if (keyCode == 'S') downkey = true;
  if (keyCode == 's') downkey = true;
  if (keyCode == 'A') leftkey = true;
  if (keyCode == 'a') leftkey = true;
  if (keyCode == 'D') rightkey = true;
  if (keyCode == 'd') rightkey = true;
  if (key == ' ') spacekey = true;
}

void keyReleased() {
  if (keyCode == 'W') upkey = false;
  if (keyCode == 'w') upkey = false;
  if (keyCode == 'S') downkey = false;
  if (keyCode == 's') downkey = false;
  if (keyCode == 'A') leftkey = false;
  if (keyCode == 'a') leftkey = false;
  if (keyCode == 'D') rightkey = false;
  if (keyCode == 'd') rightkey = false;
  if (key == ' ') spacekey = false;
}
