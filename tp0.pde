PImage imagen;

void setup() {
  size(800, 400);
  background(255);
  imagen = loadImage("llave.jpg");
  imagen.resize(400, 400);
  image(imagen, 400, 0);
}

void draw() {

  // cuerpo
  stroke(0);
  fill(0);
  triangle(81, 148, 109, 147, 97, 135);
  triangle(104, 93, 102, 121, 116, 118);

  stroke(0);
  fill(170);
  quad(110, 113, 97, 140, 316, 316, 328, 287);

  fill(100);
  triangle (320, 321, 316, 316, 321, 311);

  fill(170);
  quad(267, 266, 272, 251, 154, 161, 150, 173);
  quad(302, 278, 310, 283, 305, 295, 297, 289);
  quad(120, 147, 124, 137, 117, 131, 112, 142);

  noStroke();
  fill(0, 30);
  quad(273, 245, 287, 292, 314, 313, 327, 286);

  stroke(0);
  fill(0);
  quad(99, 138, 97, 140, 101, 141, 110, 113);

  line(104, 146, 318, 320);


  //boca cerrada

  fill(100);
  triangle (320, 321, 316, 316, 321, 311);

  fill(100);
  stroke(0);
  ellipse(341, 317, 44, 71);

  fill(170);
  ellipse(341, 312, 42, 58);
  ellipse(341, 312, 36, 51);

  beginShape();
  stroke(0);
  fill(255);
  vertex (341, 339);
  vertex (345, 337);
  vertex (349, 336);
  vertex (352, 332);
  vertex (356, 327);
  vertex (356, 323);
  vertex (358, 319);
  vertex (359, 315);
  vertex (358, 317);
  vertex (360, 312);
  vertex (358, 310);
  vertex (358, 303);
  vertex (354, 302);
  vertex (350, 299);
  vertex (346, 298);
  vertex (338, 301);
  vertex (335, 304);
  vertex (331, 308);
  vertex (329, 312);
  vertex (330, 314);
  vertex (328, 319);
  vertex (327, 324);
  vertex (329, 328);
  vertex (331, 331);
  vertex (331, 332);
  vertex (333, 336);
  vertex (336, 335);
  vertex (341, 339);
  endShape();

  stroke(0);
  fill(0);
  triangle(332, 308, 330, 300, 334, 304);
  triangle(337, 302, 337, 294, 339, 299);
  triangle(344, 300, 345, 291, 348, 298);
  triangle(352, 300, 354, 296, 357, 302);
  triangle(329, 313, 325, 313, 327, 319);



  //boca abierta

  stroke(0);
  fill(170);
  ellipse(79, 109, 55, 85);

  beginShape();

  fill(255);
  stroke(0);
  ellipse(73, 107, 22, 40);

  stroke(255);
  quad(49, 79, 76, 88, 69, 127, 38, 114);

  stroke(0);
  line(59, 82, 77, 88); 
  line(69, 127, 52, 122);

  fill(0);
  quad(58, 82, 59, 85, 76, 89, 77, 88);
  line(71, 127, 52, 121);
  endShape();
}
