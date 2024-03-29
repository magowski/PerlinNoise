int cols,rows;
int scl = 20;
int w = 600;
int h = 600;

float[][] terrain;

void setup() {
    size(600, 600, P3D);
    cols = w / scl;
    rows = h / scl;
    terrain = new float[cols][rows];
    for (int y = 0; y < cols; y++) {
      for (int x = 0; x < rows; x++) {
        terrain[x][y] = random(-10,10);
      }
    }
    
}

void draw()  {
  background(0);
  stroke(255);
  noFill();
  int w = 600;
  int h = 600;
  
  translate(width/2, height/2);
  rotateX(PI/3);
  
  translate(-w/2, -h/2);
  for (int y = 0; y < rows-1; y++)
    beginShape(TRIANGLE_STRIP);
    for (int x = 0; x < cols; x++)
      vertex(x*scl, y*scl, terrain[x][y]);
      vertex(x*scl, ((y+1)*scl), terrain[x][y+1]);
    }
    endShape();
}