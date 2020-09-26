class poderes {
  float x, y;
  float t;
  poderes (float x_, float y_, float t_) {
    x=x_;
    y=y_;
    t=t_;
  }


  void mousemueve() {
    y= mouseY;
  }


  void dibujar() {
    noStroke();
    fill(#9BDEF7);
    circle(x, y-t/1, t*2);
  }
}
