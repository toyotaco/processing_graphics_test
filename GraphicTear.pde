class GraphicTear extends GraphicObject {
  int shape_width = 100;
  int shape_height = 100;
  GraphicTear(float x, float y){
    super(x, y, 1.0f);
  }
  
  void draw(){
    strokeWeight(2);
    stroke(100, 100, 200, duration * 255 );

    pushMatrix();
    translate(x, y);
    rotate(radians(-90));
    beginShape();
    shape(tear_drop_shape, 0, 0, shape_width, shape_height);
    endShape(CLOSE);
    popMatrix();
    y += 3;
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