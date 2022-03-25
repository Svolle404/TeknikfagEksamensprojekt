class window {
  float w = 200;
  float pw = 0;
  float h = 200;
  float ph = 0;
  boolean focused = false;
  PImage[] hands = new PImage[5];

  void update() {
    pw = w;
    ph = h;

    if (focused) {
      w = lerp(w, 400, 0.1);
      h = lerp(h, displayHeight, 0.1);
    } else {
      w = lerp(w, 200, 0.1);
      h = lerp(h, 200, 0.1);
    }

    if (w != pw || h != ph) {
      surface.setSize(round(w), round(h));
      surface.setLocation(displayWidth-width, displayHeight-height);
    }
  }

  void show() {
    if (!focused) {
      image(hands[hand.gesture], width/2-56, 0);
    }
  }
}
