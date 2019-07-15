import controlP5.*;
ControlP5 slider;
int sliderValue;

PShader sd;

void setup() {
  size(600, 600, P2D); 
  slider = new ControlP5(this);
  slider.addSlider("sliderValue")
    .setRange(0, 3)
    .setValue(0)
    .setPosition(50, 40)
    .setSize(200, 20)
    .setNumberOfTickMarks(5);
}

void draw() {
  if (sliderValue == 0) {
    sd = loadShader("one.glsl");
    sd.set("time", millis() / 1000.0);
    sd.set("resolution", (float)width, (float)height);  
    shader(sd);
    rect(0, 0, width, height); 
  } if (sliderValue == 1) {
    sd = loadShader("two.glsl");
    sd.set("time", millis() / 1000.0);
    sd.set("resolution", (float)width, (float)height/2);  
    shader(sd);
    rect(0, 0, width, height); 
  }
}
