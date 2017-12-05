abstract class GraphicObject {
  float x, y;
  float duration;
  GraphicObject(float x, float y, float duration){
    this.x = x;
    this.y = y;
    this.duration = duration;
  }
  
  abstract void draw();
  abstract void move(float x, float y);
  abstract boolean is_destroyable();
}