//CREATE MORE ENEMIES (USE AN ARRAY)
private class Radar {
  PVector A, B, C[];//Point A&B are points on the line and Point C is the origin point of the enemy 
  PVector origin;//The center of the radar
  float AC, AB, BC;//Distances: |AC| , |AB| , |BC|
  float tempX, tempY;//Temporary points
  float enemySize, hold;//Hold is the threshold for detecting the enemy. It allows for a longer 'hold' of the enemy
  int size; //Size of the radar
  ArrayList<PVector> trail;
  int maxTrailLength,count;
  
  Radar() {
    maxTrailLength = 50;
    size = width/9 + height/9;
    enemySize = size * 0.03f;
    hold = 10;//How long the 'enemy' will stay on the radar for (not time but pixels)
    trail = new ArrayList<PVector>(maxTrailLength);
    count = 0;
    
    C = new PVector[3];
    origin = new PVector(width * 0.875f, height * 0.75f);
    tempX = origin.x - size * 0.2f;
    tempY = origin.y + size * 0.25f;
    C[0] = new PVector(tempX, tempY);//Center of enemy
    tempX = origin.x - size * 0.25f;
    tempY = origin.y + size * 0.25f;
    C[1] = new PVector(tempX, tempY);//Center of enemy
    tempX = origin.x - size * 0.25f;
    tempY = origin.y + size * 0.2f;
    C[2] = new PVector(tempX, tempY);//Center of enemy
    B = new PVector(origin.x, origin.y);//Static point on line
  }

  void render() {
    tempX = origin.x + ((size/2)-2) * cos(count/100.0f);
    tempY = origin.y + ((size/2)-2) * sin(count/100.0f);
    count++;
    A = new PVector(tempX, tempY);


    //Draws the radar line
    noFill();
    strokeWeight(3);
    trail.add(A);
    while (trail.size () >= maxTrailLength)
      trail.remove(0);

    if (trail.size() >= maxTrailLength-1) {
      for (int i = 1; i <= trail.size(); i++) {
        PVector currPoint = trail.get(trail.size() - i);
        stroke(180-i, 255-i, 200-i);
        line(origin.x, origin.y, currPoint.x, currPoint.y);
      }
    }
    
    strokeWeight(1);
    stroke(255);
    noFill();
    //Draws the circles of the radar
    for (int i=size; i>size/4; i-=size/4) {
      ellipse(origin.x, origin.y, i, i);
    }


    for(int i=0;i<C.length;i++){
      AC = distance(trail.get(trail.size()/2), C[i]);
      AB = distance(A, B);
      BC = distance(B, C[i]);
      //If the distance from point A to point C plus the distance from point B to point C is close (within the treshold -> 'hold') to the distance of point A to point B
      //It will detect the enemy. The line A------C---B  will detect the enemy. The line A-----B---C will not detect the enemy as the enemy is too far away 
      if ((AC + BC <= AB+hold) && (AC + BC >= AB - hold)) {
        noStroke();
        fill(0, 0, 200);
        ellipse(C[i].x, C[i].y, enemySize, enemySize);
      }
    }
  }

  //Get the distance between two points
  float distance(PVector A, PVector B) {
    float dist;
    float tempX = pow(A.x-B.x, 2); 
    float tempY = pow(A.y-B.y, 2);
    dist = sqrt(tempX + tempY);

    return dist;
  }
}