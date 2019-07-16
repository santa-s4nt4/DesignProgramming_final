import controlP5.*;
ControlP5 slider;
int sliderValue;

PShader sd;

void setup() {
  size(1280, 840, P2D);
  background(255);
  noStroke();

  slider = new ControlP5(this);
  slider.addSlider("sliderValue")
    .setRange(0, 4)
    .setValue(0)
    .setPosition(50, 50)
    .setSize(200, 20)
    .setColorActive(color(255, 0, 0))
    .setColorBackground(color(255, 0, 0, 120)) 
    .setColorCaptionLabel(color(0))
    .setColorForeground(color(255, 0, 0))
    .setNumberOfTickMarks(5);
  slider.getController("sliderValue")
    .getValueLabel()
    .align(ControlP5.RIGHT, ControlP5.BOTTOM_OUTSIDE)
    .setPaddingX(-20);
}

void draw() {
  if (sliderValue == 0) {
    sd = loadShader("one.glsl");
    sd.set("time", millis() / 1000.0);
    sd.set("resolution", (float)width, (float)height);  
    shader(sd);
    rect(0, height/6, width, height); 
  } if (sliderValue == 1) {
    sd = loadShader("two.glsl");
    sd.set("time", millis() / 1000.0);
    sd.set("resolution", (float)width, (float)height);  
    shader(sd);
    rect(0, height/6, width, height); 
  } if (sliderValue == 2) {
    sd = loadShader("three.glsl");
    sd.set("time", millis() / 1000.0);
    sd.set("resolution", (float)width, (float)height);  
    shader(sd);
    rect(0, height/6, width, height); 
  } if (sliderValue == 3) {
    sd = loadShader("four.glsl");
    sd.set("time", millis() / 1000.0);
    sd.set("resolution", (float)width, (float)height);  
    shader(sd);
    rect(0, height/6, width, height); 
  } if (sliderValue == 4) {
    sd = loadShader("five.glsl");
    sd.set("time", millis() / 1000.0);
    sd.set("resolution", (float)width, (float)height);  
    shader(sd);
    rect(0, height/6, width, height); 
  }
}
