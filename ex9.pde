float [] xValues;
float [] yValues;
float []xSpeeds;
float [] ySpeeds;
int Circles = 50;
color [] rgb;

void setup() {
size(600, 600);

xValues = new float [Circles];
yValues= new float [Circles];
xSpeeds = new float [Circles];
ySpeeds = new float [Circles];

rgb = new color [Circles];

for (int i = 0; i < rgb.length; i++) {
  rgb[i] = color(random(255), random(255), random(255));
}
for (int i = 0; i < xValues.length; i++) {
  xValues[i] =  random(width/2);
}

for (int i = 0; i < yValues.length; i++) {
yValues[i] = random(height/2, height * 2);

}

for (int i = 0; i < xSpeeds.length; i++) {
 if (i % 2 == 0) {
  xSpeeds[i] = random(4,2);
 } else {
   xSpeeds [i]  = random(-4,2);
 }
}

for(int i = 0; i < ySpeeds.length; i++) {
  ySpeeds[i] = random(-4,2);
}

}

void draw() {
background(0);
fill(255);
for (int i = 0; i < xValues.length; i++) {
fill(rgb[i]);
xValues[i] += xSpeeds[i];
yValues[i] += ySpeeds[i];
ellipse(xValues[i], yValues[i], 10, 10);



if (xValues[i] > width || xValues[i] < 0) {
  xSpeeds[i] = xSpeeds[i] * -4;
}
if (yValues[i] > height || yValues[i] < 0) {
  ySpeeds[i] = ySpeeds[i] * -4;

}
}
}
