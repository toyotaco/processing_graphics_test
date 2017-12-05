class GraphicHeart extends GraphicObject {
  int shape_width = 100;
  int shape_height = 100;
  GraphicHeart(float x, float y){
    super(x, y, 0.5f);
  }

  void draw(){
    noFill();
    strokeWeight(2);
    stroke(200, 0, 0);
    strokeJoin(ROUND);

    pushMatrix();
    translate(this.x, this.y);
    pushMatrix();
    scale(1 - duration);
    pushMatrix();
    rotate(duration * 5.0f);
    translate(-1 * shape_width / 2,-1 * shape_height / 2);
    beginShape();
    shape(heart_shape, 0, 0, shape_width, shape_height);
    endShape(CLOSE);
    popMatrix();
    popMatrix();
    popMatrix();
    duration -= 1.0f / frameRate;
  }
  
  void move(float x, float y){
    this.x = x;
    this.y = y;
  }
  
  boolean is_destroyable(){
    if(duration < 0){
      return true;
    }
    return false;
  }
}