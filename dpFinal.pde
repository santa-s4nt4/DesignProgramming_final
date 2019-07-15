import controlP5.*;
ControlP5 Toggle1;
ControlP5 Toggle2;
ControlP5 Toggle3;
ControlP5 Toggle4;
boolean toggleValue1;
boolean toggleValue2;
boolean toggleValue3;
boolean toggleValue4;

int sw1 = 0;
int sw2 = 0;
int sw3 = 0;
int sw4 = 0;

PShader sd;

// main display
void settings() {
  size(700, 700, P2D);
}

void setup() {
  String[] args = {"SecondApplet"};   
  SecondApplet sa = new SecondApplet();
  PApplet.runSketch(args, sa);
}

void draw() {
  if (sw1 == 1) {
      sd = loadShader("one.glsl");
      sd.set("time", millis() / 1000.0);
      sd.set("resolution", 512.0, 100.0);  
      shader(sd);
      rect(0, 0, 1024, 576);
    }
    
    if (sw2 == 1) {
      sd = loadShader("two.glsl");
      sd.set("time", millis() / 1000.0);
      sd.set("resolution", (float)width, (float)height);  
      shader(sd);
      rect(0, 0, 1024, 576);
    }
    
    if (sw3 == 1) {
      sd = loadShader("three.glsl");
      sd.set("time", millis() / 1000.0);
      sd.set("resolution", (float)width, (float)height);  
      shader(sd);
      rect(0, 0, 1024, 576);
    }

    if (sw4 == 1) {
      sd = loadShader("four.glsl");
      sd.set("time", millis() / 1000.0);
      sd.set("resolution", (float)width, (float)height);  
      shader(sd);
      rect(0, 0, 1024, 576);
    }
}


// sub display
public class SecondApplet extends PApplet {

  void settings() {
    size(512, 512, P2D);
  }

  void setup() {
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
      sw1 = 1;
    } else {
      sw1 = 0;
    }
    if (toggleValue2 == true) {
      sw2 = 1;
    } else {
      sw2 = 0;
    }
    if (toggleValue3 == true) {
      sw3 = 1;
    } else {
      sw3 = 0;
    }
    if (toggleValue4 == true) {
      sw4 = 1;
    } else {
      sw4 = 0;
    }
  }
}