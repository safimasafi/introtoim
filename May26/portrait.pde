size(200, 200);
rectMode(CORNERS);


//hair
noStroke();
fill(49, 40, 25);
circle(100, 90, 80);
//face
fill (240, 200, 136);
noStroke();
ellipse(100, 100, 80, 80);
//eyes
fill (0, 0, 0);
noStroke();
ellipse(81, 90, 10, 10); 
ellipse(119, 90, 10, 10); 
stroke(0, 0, 0);
line(77, 79, 85, 79);
line(115, 79, 123, 79);
//nose
fill (211, 163, 85);
noStroke();
triangle(95, 110, 100, 100, 105, 110);
//mouth
fill(215, 173, 155);
stroke (245, 157, 151);
triangle(85, 120, 100, 130, 115, 120);
//lines
stroke(0, 0, 0);
line(88, 139, 80, 160);
line(110, 140, 117, 160);
//body?
noStroke();
rect(88, 139, 110, 160);
