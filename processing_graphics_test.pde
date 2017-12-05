import java.util.LinkedList;
import java.util.Iterator;

static int window_width = 640;
static int window_height = 480;
static PShape heart_shape, tear_drop_shape;
static PGraphics pg;

int offset = 10;
LinkedList<GraphicObject> graphic_objects = new LinkedList<GraphicObject>();

void setup() {
  size(4, 4);
  surface.setResizable(true);
  surface.setSize(window_width, window_height);
  background(255);
  heart_shape = loadShape("Love_Heart_SVG.svg");
  tear_drop_shape = loadShape("tear_drop.svg");
}

void draw() {
  background(255);

  for (Iterator<GraphicObject> it = graphic_objects.iterator(); it.hasNext();) {
    GraphicObject graphic_object = it.next();
    graphic_object.draw();
    if(graphic_object.is_destroyable()){
      it.remove();
    }
  }
}

void mousePressed() {
  graphic_objects.add(new GraphicHeart(mouseX, mouseY));
}

void keyPressed() {
  if (key == 'A' || key == 'a') {
    graphic_objects.add(new GraphicTear(random(offset , window_width - offset), random(offset, window_height - offset)));
  }  else if (key == 'B' || key == 'b') {
    graphic_objects.add(new GraphicHeart(random(offset , window_width - offset), random(offset, window_height - offset)));
  }
}