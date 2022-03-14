class computer {
  float threshold = 100;
  boolean leftclickReady = false;
  boolean rightclickReady = false;

  void interact() {
    if (hand.leftclick && leftclickReady) {
      robot.mousePress(InputEvent.BUTTON1_MASK);
      leftclickReady = false;
      println("Left click "+millis());
    }
    if (!hand.leftclick && !leftclickReady) {
      robot.mouseRelease(InputEvent.BUTTON1_MASK);
      leftclickReady = true;
    }

    if (hand.rightclick && rightclickReady) {
      robot.mousePress(InputEvent.BUTTON3_MASK);
      rightclickReady = false;
      println("Right click "+millis());
    }
    if (!hand.rightclick && !rightclickReady) {
      robot.mouseRelease(InputEvent.BUTTON3_MASK);
      rightclickReady = true;
    }

    if (hand.scrollup) {
      robot.mouseWheel(1);
      delay(100);
    }
    if (hand.scrolldown) {
      robot.mouseWheel(-1);
      delay(100);
    }
  }
}
