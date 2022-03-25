class computer {
  float threshold = 100;
  boolean leftclickReady = false;
  boolean rightclickReady = false;
  int scrollStartY = 0;

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
      if (hand.landmarks[1][1] < scrollStartY-40) {
        robot.mouseWheel(-1);
        scrollStartY = hand.landmarks[1][1];
      }
      if (hand.landmarks[1][1] > scrollStartY+40) {
        robot.mouseWheel(1);
        scrollStartY = hand.landmarks[1][1];
      }
    }

    //robot.keyPress(KeyEvent.VK_A); 
    //robot.keyRelease(KeyEvent.VK_A);
  }
}
