float circleX;
float xspeed = 4;
float circleY;
float yspeed = 4;

void setup() {
  size(910, 720);
  circleX = 0;
}

void draw() {
  background (34, 81, 125);
  fill  (255, 204, 0);
  stroke(255, 204, 0);
  ellipse (circleX, circleY, 32, 32);

  circleX = circleX + xspeed;
  circleY = circleY + yspeed;
  strokeWeight(10); 
  line(1, 1, 1, 720);
  line(1, 1, 910, 1);
  line(910, 1, 910, 720);
  line(1, 720, 910, 720);

  if (circleX > width || circleX <0) {
    //Turn around!
    xspeed=xspeed*-1;
  }
  if (circleY > height || circleY <0) {
    //Turn around!
    yspeed=yspeed*-1;
  }
}
