class hand {
  int[][] landmarks = new int[5][2];
  boolean move = false;
  boolean leftclick = false;
  boolean rightclick = false;
  boolean scrollup = false;
  boolean scrolldown = false;
  float x = 0;
  float y = 0;

  void pointer() {
    if (landmarks[1][1] < landmarks[2][1]-120 && landmarks[1][1] < landmarks[3][1]-120 && landmarks[1][1] < landmarks[4][1]-120 && landmarks[4][1] > landmarks[3][1]-60) {
      x = lerp(x, (landmarks[0][0]+landmarks[1][0])/2, 0.1);
      y = lerp(y, (landmarks[0][1]+landmarks[1][1])/2, 0.1);
      robot.mouseMove(int(x), int(y));
      move = true;
    } else {
      move = false;
    }

    if (dist(landmarks[0][0], landmarks[0][1], landmarks[1][0], landmarks[1][1]) < 80 && landmarks[1][1] > landmarks[2][1] && !move) {
      leftclick = true;
    } else {
      leftclick = false;
    }

    if (dist(landmarks[0][0], landmarks[0][1], landmarks[2][0], landmarks[2][1]) < 80 && landmarks[2][1] > landmarks[1][1] && !move) {
      rightclick = true;
    } else {
      rightclick = false;
    }

    if (landmarks[1][1] < landmarks[3][1]-120 && landmarks[1][1] < landmarks[4][1]-120 && landmarks[2][1] < landmarks[3][1]-120 && landmarks[2][1] < landmarks[4][1]-120 && !move) {
      scrollup = true;
    } else {
      scrollup = false;
    }
    if (landmarks[1][1] < landmarks[2][1]-120 && landmarks[1][1] < landmarks[3][1]-120 && landmarks[4][1] < landmarks[2][1]-120 && landmarks[4][1] < landmarks[3][1]-120 && !move) {
      scrolldown = true;
    } else {
      scrolldown = false;
    }
  }
}
