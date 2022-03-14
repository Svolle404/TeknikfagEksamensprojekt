import java.awt.AWTException;
import java.awt.Robot;
import java.awt.event.InputEvent;

Robot robot;
data data;
hand hand;
computer computer;

void setup() {
  size(300, 800);
  frameRate(999);
  surface.setAlwaysOnTop(true);
  data = new data();
  hand = new hand();
  computer = new computer();
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
}
