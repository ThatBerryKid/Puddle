class Menu {
  int x;
  int y;
  int w;
  int h;

  Menu(int tx, int ty, int tw, int th) {
    x = tx;
    y = ty;
    w = tw;
    h = th;
  }

  void display() {
    rect(x, y, w, h);
  }
}