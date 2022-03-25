import java.awt.AWTException;
import java.awt.Robot;
import java.awt.event.InputEvent;
import java.awt.event.KeyEvent;
import processing.event.MouseEvent;

Robot robot;
data data;
hand hand;
computer computer;
window window;

void setup() {
  size(200, 200);
  frameRate(999);
  surface.setAlwaysOnTop(true);
  surface.setResizable(true);
  surface.setLocation(displayWidth-width, displayHeight-height);
  data = new data();
  hand = new hand();
  computer = new computer();
  window = new window();
  for (int i = 0; i < window.hands.length; i++) {
    window.hands[i] = loadImage("/images/"+i+".png");
    window.hands[i].resize(112, 200);
  }
  try {
    robot = new Robot();
  } 
  catch (Throwable e) {
  }
}

void draw() {
  background(255);
  data.load();
  hand.pointer();
  computer.interact();
  window.update();
  window.show();
}

void mouseEntered() {
  window.focused = true;
}

void mouseExited() {
  window.focused = false;
}
