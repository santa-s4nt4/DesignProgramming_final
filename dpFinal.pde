import controlP5.*;
ControlP5 Toggle1;
ControlP5 Toggle2;
ControlP5 Toggle3;
ControlP5 Toggle4;
boolean toggleValue1;
boolean toggleValue2;
boolean toggleValue3;
boolean toggleValue4;

PShader sd;

void setup() {
  size(512, 512, P2D);
  Toggle1 = new ControlP5(this);
  rectMode(CENTER);
  Toggle1.addToggle("toggleValue1")
    .setSize(50, 50)
    .setPosition(40, 384)
    .setValue(false)
    .setMode(ControlP5.SWITCH);

  Toggle2 = new ControlP5(this);
  rectMode(CENTER);
  Toggle2.addToggle("toggleValue2")
    .setSize(50, 50)
    .setPosition(160, 384)
    .setValue(false)
    .setMode(ControlP5.SWITCH);

  Toggle3 = new ControlP5(this);
  rectMode(CENTER);
  Toggle3.addToggle("toggleValue3")
    .setSize(50, 50)
    .setPosition(280, 384)
    .setValue(false)
    .setMode(ControlP5.SWITCH);

  Toggle4 = new ControlP5(this);
  rectMode(CENTER);
  Toggle4.addToggle("toggleValue4")
    .setSize(50, 50)
    .setPosition(400, 384)
    .setValue(false)
    .setMode(ControlP5.SWITCH);
}

void draw() {
  if (toggleValue1 == true) {
    sd = loadShader("one.glsl");
    sd.set("time", millis() / 1000.0);
    sd.set("resolution", 512.0, 100.0);  
    shader(sd);
    rect(0, 0, 1024, 576);
    }
    
  if (toggleValue2 == true) {
    sd = loadShader("two.glsl");
    sd.set("time", millis() / 1000.0);
    sd.set("resolution", (float)width, (float)height);  
    shader(sd);
    rect(0, 0, 1024, 576);
    }

  if (toggleValue3 == true) {
    sd = loadShader("three.glsl");
    sd.set("time", millis() / 1000.0);
    sd.set("resolution", (float)width, (float)height);  
    shader(sd);
    rect(0, 0, 1024, 576);
    }

    if (toggleValue4 == true) {
    sd = loadShader("four.glsl");
    sd.set("time", millis() / 1000.0);
    sd.set("resolution", (float)width, (float)height);  
    shader(sd);
    rect(0, 0, 1024, 576);
    }
}