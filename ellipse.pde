class ellipse {
  float x, y;
  float t;
  ellipse (float x_, float y_, float t_) {
    x=x_;
    y=y_;
    t=t_;
  }
  void dibujar() {
    noStroke();
    fill(#86CBCA);
    ellipseX= random (width);
    ellipseY= random (height);
    ellipseTam= random(width, height);
    float temblor = sin(frameCount);
    ellipse(ellipseX + temblor, ellipseY, ellipseTam, frameCount);
  }
}
