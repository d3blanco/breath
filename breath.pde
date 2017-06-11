import gifAnimation.*;

GifMaker gifExport;
int frames = 0;
int totalFrames = 200;
PFont font;
public void setup() {
  smooth();
  size(600, 600);

  gifExport = new GifMaker(this, "export.gif", 100);
  gifExport.setRepeat(0); // make it an "endless" animation

 fill(#29A7C9);
 stroke(#29A7C9);
  font = loadFont("OpenSans-CondensedLight-78.vlw");
}

void draw() {
 
  background(255);
  textFont(font,78);
  textAlign(CENTER);
  text("RESPIRA",300,100);
  fill(#29A7C9);
  float size = 150.0 * sin(TWO_PI * frames / float(totalFrames)) + 200.0;
  ellipse(width/ 2.0, height / 2.0, size, size);
  export();
}

void export() {
  if(frames < totalFrames) {
    gifExport.setDelay(50);
    gifExport.addFrame();
    frames++;
  } else {
    gifExport.finish();
    frames++;
    println("gif saved");
    exit();
  }
}
