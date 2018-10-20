//hello
int globalJeremyMoney = 0;
class JeremysGameCodingFacility {
  int xPos = 0;
  int yPos = 0;
  int value = 6;
  int createdAt;
  JeremysGameCodingFacility(int initX, int initY ) {
    xPos = initX;
    yPos = initY;
    createdAt = millis();
  }

  void display() {
    if (millis() - createdAt > 5000) {//current time in miliseconsminus new time
      fill(0, 255, 0);//ready color
      ellipse(xPos, yPos, 100, 100);
      fill(#FF0000);
      text("Selling Games", xPos-30, yPos);
      if (onClick()) {//now its safe to call on click because its been 5s and is clickable
        createdAt = millis(); //set to current time so it resets    
        globalJeremyMoney += value;
      }
    } else {

      fill(#FF0000);//not ready color
      ellipse(xPos, yPos, 100, 100);
      fill(255, 255, 255);
      text("Coding Games", xPos-30, yPos);
    }
  }


  boolean onClick() {//check for clicks
    if (mousePressed && (mouseButton == LEFT)) {
      if ( dist(xPos, yPos, mouseX, mouseY) < 100/2) {
        return true;
      }
    }
    return false;
  }
}
