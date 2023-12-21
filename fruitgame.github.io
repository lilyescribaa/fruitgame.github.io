var score = 0;
var currentScene = 0;
var startTime = 0;
var numApples=10;
var numPineapple=10;
var numGrapes=10;
frameRate(1);
var drawApple = function (xPos, yPos, appleHeight){

//apple
noStroke();
fill(50, 156, 57);
arc(xPos+(appleHeight/100*54), yPos+(appleHeight/100*139), appleHeight/100*13, appleHeight/100*20, -65, 107);
fill(74, 54, 21);
arc(xPos+(appleHeight/100*50), yPos+(appleHeight/100*137), appleHeight/100*8, appleHeight/100*26, -123, 55);
fill(204, 8, 8);
arc(xPos+(appleHeight/100*46), yPos+(appleHeight/100*161), appleHeight/100*24, appleHeight/100*34, 0, 360);
arc(xPos+(appleHeight/100*63), yPos+(appleHeight/100*161), appleHeight/100*24, appleHeight/100*34, 0, 360);
ellipse(xPos+(appleHeight/100*55), yPos+(appleHeight/100*173), appleHeight/100*7, appleHeight/100*7);  
};
var drawPineapple = function (xPos, yPos, pineappleHeight){

//pineapple
fill(255, 213, 0);
ellipse(xPos+(pineappleHeight/100*194),  yPos+(pineappleHeight/100*183), (pineappleHeight/100*45), (pineappleHeight/100*65));
stroke(230, 192, 0);
line(xPos+(pineappleHeight/100*183),  yPos+(pineappleHeight/100*156), xPos+(pineappleHeight/100*216),  yPos+(pineappleHeight/100*180));
line(xPos+(pineappleHeight/100*175),  yPos+(pineappleHeight/100*168), xPos+(pineappleHeight/100*214),  yPos+(pineappleHeight/100*197));
line(xPos+(pineappleHeight/100*172),  yPos+(pineappleHeight/100*185), xPos+(pineappleHeight/100*206), yPos+(pineappleHeight/100*210));
line(xPos+(pineappleHeight/100*175), yPos+(pineappleHeight/100*170), xPos+(pineappleHeight/100*207), yPos+(pineappleHeight/100*148));    
line(xPos+(pineappleHeight/100*173),  yPos+(pineappleHeight/100*190), xPos+(pineappleHeight/100*211), yPos+(pineappleHeight/100*163));
line(xPos+(pineappleHeight/100*180),  yPos+(pineappleHeight/100*208), xPos+(pineappleHeight/100*217), yPos+(pineappleHeight/100*181));
fill(82, 143, 52);
noStroke();
arc(xPos+(pineappleHeight/100*197),  yPos+(pineappleHeight/100*133), (pineappleHeight/100*12), (pineappleHeight/100*40), -65, 107);
arc(xPos+(pineappleHeight/100*187),  yPos+(pineappleHeight/100*139), (pineappleHeight/100*14), (pineappleHeight/100*29), 60, 236);
arc(xPos+(pineappleHeight/100*187),  yPos+(pineappleHeight/100*139), (pineappleHeight/100*14), (pineappleHeight/100*29), 60, 236);
fill(38, 99, 54);
arc(xPos+(pineappleHeight/100*193),  yPos+(pineappleHeight/100*133), (pineappleHeight/100*12), (pineappleHeight/100*40), 60, 245);
arc(xPos+(pineappleHeight/100*202),  yPos+(pineappleHeight/100*139), (pineappleHeight/100*14), (pineappleHeight/100*29), 306, 479);
fill(34, 59, 34);
arc(xPos+(pineappleHeight/100*197), yPos+(pineappleHeight/100*139), (pineappleHeight/100*10), (pineappleHeight/100*29), 47, 252);
};
var drawOrange = function (xPos, yPos, orangeHeight){
//orange
fill(217, 137, 17);
ellipse(xPos+(orangeHeight/100*56), yPos+(orangeHeight/100*181), (orangeHeight/100*30), (orangeHeight/100*30));
//stem and leaf
fill(105, 48, 48);
arc(xPos+(orangeHeight/100*54), yPos+(orangeHeight/100*157), (orangeHeight/100*8), (orangeHeight/100*26), -123, 55);
fill(128, 173, 52);
arc(xPos+(orangeHeight/100*60), yPos+(orangeHeight/100*158), (orangeHeight/100*13), (orangeHeight/100*20), -65, 107);
};
var drawGrape = function (xPos, yPos, grapeHeight){
//grape balls
noStroke();
fill(95, 0, 135);
ellipse (xPos+(grapeHeight/100*44), yPos+(grapeHeight/100*76), (grapeHeight/100*15), (grapeHeight/100*15));
ellipse(xPos+(grapeHeight/100*55), yPos+(grapeHeight/100*76), (grapeHeight/100*15), (grapeHeight/100*15));
ellipse(xPos+(grapeHeight/100*67), yPos+(grapeHeight/100*76), (grapeHeight/100*15), (grapeHeight/100*15));
ellipse(xPos+(grapeHeight/100*49), yPos+(grapeHeight/100*88), (grapeHeight/100*15), (grapeHeight/100*15));
ellipse(xPos+(grapeHeight/100*61), yPos+(grapeHeight/100*88), (grapeHeight/100*15), (grapeHeight/100*15));
ellipse(xPos+(grapeHeight/100*56), yPos+(grapeHeight/100*99),(grapeHeight/100*15),(grapeHeight/100*15));
//leaf
fill(128, 173, 52);
arc(xPos+(grapeHeight/100*56), yPos+(grapeHeight/100*59), (grapeHeight/100*13), (grapeHeight/100*20), -65, 107);
//stem
fill(105, 48, 48);
arc(xPos+(grapeHeight/100*50), yPos+(grapeHeight/100*59), (grapeHeight/100*8), (grapeHeight/100*26), -123, 55);
};
var drawStrawberry = function (xPos, yPos, strawberryeHeight){
//strawberry
noStroke();
fill(227, 32, 84);
triangle(xPos+(strawberryeHeight/100*171), yPos+(strawberryeHeight/100*55), xPos+(strawberryeHeight/100*192), yPos+(strawberryeHeight/100*60), xPos+(strawberryeHeight/100*188), yPos+(strawberryeHeight/100*94));
triangle(xPos+(strawberryeHeight/100*220), yPos+(strawberryeHeight/100*57), xPos+(strawberryeHeight/100*202), yPos+(strawberryeHeight/100*61), xPos+(strawberryeHeight/100*205), yPos+(strawberryeHeight/100*96));
ellipse(xPos+(strawberryeHeight/100*197), yPos+(strawberryeHeight/100*79), (strawberryeHeight/100*25), (strawberryeHeight/100*42));
ellipse(xPos+(strawberryeHeight/100*196), yPos+(strawberryeHeight/100*54), (strawberryeHeight/100*49), (strawberryeHeight/100*24));
fill(82, 143, 52);
arc(xPos+(strawberryeHeight/100*197), yPos+(strawberryeHeight/100*33), (strawberryeHeight/100*12), (strawberryeHeight/100*40), -65, 107);
arc(xPos+(strawberryeHeight/100*187), yPos+(strawberryeHeight/100*39), (strawberryeHeight/100*14), (strawberryeHeight/100*29), 60, 236);
arc(xPos+(strawberryeHeight/100*187), yPos+(strawberryeHeight/100*39), (strawberryeHeight/100*14), (strawberryeHeight/100*29), 60, 236);
fill(38, 99, 54);
arc(xPos+(strawberryeHeight/100*193), yPos+(strawberryeHeight/100*33), (strawberryeHeight/100*12), (strawberryeHeight/100*40), 60, 245);
arc(xPos+(strawberryeHeight/100*202), yPos+(strawberryeHeight/100*39), (strawberryeHeight/100*14), (strawberryeHeight/100*29), 306, 479);
fill(34, 59, 34);
arc(xPos+(strawberryeHeight/100*197), yPos+(strawberryeHeight/100*39), (strawberryeHeight/100*10), (strawberryeHeight/100*29), 47, 252);
fill(0, 0, 0);
ellipse(xPos+(strawberryeHeight/100*179), yPos+(strawberryeHeight/100*55), (strawberryeHeight/100*2), (strawberryeHeight/100*4));
ellipse(xPos+(strawberryeHeight/100*212), yPos+(strawberryeHeight/100*53), (strawberryeHeight/100*2), (strawberryeHeight/100*4));
ellipse(xPos+(strawberryeHeight/100*190), yPos+(strawberryeHeight/100*62), (strawberryeHeight/100*2), (strawberryeHeight/100*4));
ellipse(xPos+(strawberryeHeight/100*183), yPos+(strawberryeHeight/100*62), (strawberryeHeight/100*2), (strawberryeHeight/100*4));
ellipse(xPos+(strawberryeHeight/100*198), yPos+(strawberryeHeight/100*62), (strawberryeHeight/100*2), (strawberryeHeight/100*4));
ellipse(xPos+(strawberryeHeight/100*204), yPos+(strawberryeHeight/100*62), (strawberryeHeight/100*2), (strawberryeHeight/100*4));
ellipse(xPos+(strawberryeHeight/100*211), yPos+(strawberryeHeight/100*62), (strawberryeHeight/100*2), (strawberryeHeight/100*4));
ellipse(xPos+(strawberryeHeight/100*189), yPos+(strawberryeHeight/100*74), (strawberryeHeight/100*2), (strawberryeHeight/100*4));
ellipse(xPos+(strawberryeHeight/100*197), yPos+(strawberryeHeight/100*74), (strawberryeHeight/100*2), (strawberryeHeight/100*4));
ellipse(xPos+(strawberryeHeight/100*205), yPos+(strawberryeHeight/100*74), (strawberryeHeight/100*2), (strawberryeHeight/100*4));
ellipse(xPos+(strawberryeHeight/100*195), yPos+(strawberryeHeight/100*85), (strawberryeHeight/100*2), (strawberryeHeight/100*4));
ellipse(xPos+(strawberryeHeight/100*201), yPos+(strawberryeHeight/100*85), (strawberryeHeight/100*2), (strawberryeHeight/100*4));
};
var drawWatermelon = function (xPos, yPos, watermelonHeight){
//watermelon
fill(81, 219, 81);
noStroke();
arc(xPos+(watermelonHeight/100*50), yPos+(watermelonHeight/100*50), watermelonHeight/100*50, watermelonHeight/100*55, 0, 180);
fill(255, 255, 255);
arc(xPos+(watermelonHeight/100*50), yPos+(watermelonHeight/100*50), watermelonHeight/100*45, watermelonHeight/100*50, 0, 180); 
fill(250, 68, 68);
arc(xPos+(watermelonHeight/100*50), yPos+(watermelonHeight/100*50), watermelonHeight/100*40, watermelonHeight/100*45, 0, 180);
fill(0, 0, 0);
ellipse(xPos+(watermelonHeight/100*50), yPos+(watermelonHeight/100*67), watermelonHeight/100*2, watermelonHeight/100*2); 
ellipse(xPos+(watermelonHeight/100*47), yPos+(watermelonHeight/100*57), watermelonHeight/100*2, watermelonHeight/100*2); 
ellipse(xPos+(watermelonHeight/100*36), yPos+(watermelonHeight/100*54), watermelonHeight/100*2, watermelonHeight/100*2); 
ellipse(xPos+(watermelonHeight/100*40), yPos+(watermelonHeight/100*62), watermelonHeight/100*2, watermelonHeight/100*2); 
ellipse(xPos+(watermelonHeight/100*60), yPos+(watermelonHeight/100*64), watermelonHeight/100*2, watermelonHeight/100*2); 
ellipse(xPos+(watermelonHeight/100*56), yPos+(watermelonHeight/100*57), watermelonHeight/100*2, watermelonHeight/100*2); 
ellipse(xPos+(watermelonHeight/100*64), yPos+(watermelonHeight/100*54), watermelonHeight/100*2, watermelonHeight/100*2); 
};
var drawKnife = function(xPos, yPos, knifeHeight){
fill(145, 130, 130);
arc(xPos+(knifeHeight/100*162), yPos+(knifeHeight/100*50),(knifeHeight/100*23), (knifeHeight/100*91), -93, 36);
fill(71, 62, 48);
rect(xPos+(knifeHeight/100*167), yPos+(knifeHeight/100*75), (knifeHeight/100*12), (knifeHeight/100*48));
fill(255, 255, 255);
ellipse(xPos+(knifeHeight/100*168), yPos+(knifeHeight/100*61), (knifeHeight/100*5), (knifeHeight/100*5));
ellipse(xPos+(knifeHeight/100*168), yPos+(knifeHeight/100*90), (knifeHeight/100*5), (knifeHeight/100*5));
ellipse(xPos+(knifeHeight/100*168), yPos+(knifeHeight/100*77), (knifeHeight/100*5), (knifeHeight/100*5));
};
         

/* Copy in the Khan Button class */
var Button = function(config) {
    this.x = config.x || 0;
    this.y = config.y || 0;
    this.width = config.width || 150;
    this.height = config.height || 50;
    this.label = config.label || "Click";
    this.onClick = config.onClick || function() {};
};

Button.prototype.draw = function() {
    fill(222, 155, 222);
    rect(this.x, this.y, this.width, this.height, 5);
    fill(0, 0, 0);
    textSize(19);
    textAlign(LEFT, TOP);
    text(this.label, this.x+10, this.y+this.height/4);
};

Button.prototype.isMouseInside = function() {
    return mouseX > this.x &&
           mouseX < (this.x + this.width) &&
           mouseY > this.y &&
           mouseY < (this.y + this.height);
};

Button.prototype.handleMouseClick = function() {
    if (this.isMouseInside()) {
        this.onClick();
    }
};

var btn1 = new Button({
    x: 129,
    y: 222,
    label: "   Start Button",
    onClick: function() {
        currentScene = 1;
        startTime=millis();
    }
});

var btn2 = new Button({
    x: 255,
    y: 60,
    label: "Next Screen",
    onClick: function() {
        currentScene = 2;
    }
});
var splashScreen = function() {
    background(237, 190, 237);
    fill(102, 35, 102);
    textSize(40);
    text("Fruit Slicer",108, 120);
    textSize(25);
    text("By: Madelyn & Lily ", 103, 171);
    rect(0, 0, 7, 400);
    rect(393, 0, 7, 400);
    drawApple(7, -63, 90);
    drawPineapple(49, -60, 74);
    drawOrange(287, -121, 107);
    drawGrape(75, 1, 90);
    drawStrawberry(125, 21, 73);
    drawWatermelon(12, 87, 90);
    drawWatermelon(297, 184, 90);
    drawPineapple(-89, 110, 74);
    drawPineapple(199, 28, 74);
    drawApple(292, 193, 90);
    drawGrape(216, 257, 90);
    drawPineapple(57, 199, 74);
    drawStrawberry(-84, 278, 73);
    drawOrange(67, 145, 107);
    
    fill(220,208, 255);
        btn1.draw();
    
};

var drawScene2 = function () {
    currentScene = 2;
    background(237, 190, 237);
    fill(102, 35, 102);
    textSize(70);
    text("Score: " + score, 18, 83);
};

var drawScene1 = function() {
noFill();
frameRate(20);
var score = 0;
var nextScore = 1;//score board

var Beaver = function(x, y) {
    this.x = x;
    this.y = y;
    //drawKnife(this.x, this.y, 50);
    this.sticks = 0;
};


Beaver.prototype.draw = function() {
    this.y = constrain(this.y, 0, height-50);
    drawKnife(this.x, this.y, 50);
    if (nextScore === 1 && this.y <50) {score++;  nextScore = 2;}
    else if (nextScore === 2 && this.y >300) {score++;  nextScore = 1;}
};


Beaver.prototype.hop = function() {
    drawKnife(this.x, this.y, 50);
    this.y -= 5;
};


Beaver.prototype.fall = function() {
    drawKnife(this.x, this.y, 50);
    this.y += 5;
};


Beaver.prototype.checkForStickGrab = function(stick) {
    if ((stick.x >= this.x && stick.x <= (this.x + 40)) &&                 
        (stick.y >= this.y && stick.y <= (this.y + 40))) {
        stick.y = -400;
        score++;
    }
};


var Stick = function(x, y) {
    this.x = x;
    this.y = y;
};


Stick.prototype.draw = function() {
    fill(79, 66, 17);
    rectMode(CENTER);
    //image(getImage("space/rocketship"),this.x,this.y,50,50);
    drawWatermelon(this.x, this.y, 50);
    drawGrape(this.x, this.y, 50);
    drawPineapple(this.x, this.y, 35);
    drawOrange(this.x, this.y, 66);
    drawStrawberry(this.x, this.y, 39);
    drawApple(this.x, this.y, 50);
    
};

var grape = function(x,y){
    drawGrape(this.x, this.y, 50);
    };

var watermelon = function(x,y){
    drawWatermelon(this.x, this.y, 50);
    };

var apple = function(x,y){
    drawApple(this.x, this.y, 50);
    };

var strawberry = function(x,y){
    drawStrawberry(this.x, this.y, 50);
    };

var orange = function(x,y){
    drawOrange(this.x, this.y, 50);
    };

var pineapple = function(x,y){
    drawPineapple(this.x, this.y, 50);
    };

var beaver = new Beaver(200, 300);


var sticks = [];
for (var i = 0; i < 40; i++) {  
    sticks.push(new Stick(i * 40 - 1639, random(20, 260)));
}

draw = function() {
    
// static
background(79, 60, 40);
noStroke();
fill(115, 166, 121);
rect(-7, -5, 408, 119, 10);
ellipse(0, 234, 59, 255);
ellipse(18, 234, 59, 255);
ellipse(91, 225, 40, 249);
ellipse(155, 233, 48, 249);
ellipse(232, 233, 71, 249);
ellipse(312, 223, 50, 249);
ellipse(387, 222, 59, 255);

fill(0, 110, 18);//light green circles from left to right
noStroke();
ellipse(55, 74, 96, 138);
ellipse(116, 84, 70, 100);
ellipse(189, 81, 97, 177);
ellipse(274, 77, 95, 130);
ellipse(342, 64, 117, 153);

fill(37, 92, 45);//dark green circles
ellipse(88, 64, 90, 130);
ellipse(227, 64, 70, 130);
ellipse(322, 64, 90, 140);

fill(20, 89, 30);
ellipse(4, 37, 98, 144);
ellipse(150, 22, 81, 127);
ellipse(290, 47, 81, 127);
ellipse(419, 37, 98, 144);

fill(105, 83, 41);
rect(0, 341, 828, 75);

fill(21, 61, 11);
ellipse(24, 318, 60, 60);
ellipse(60, 328, 40, 40);
ellipse(88, 311, 40, 40);
ellipse(49, 293, 40, 40);
ellipse(74, 293, 40, 40);
ellipse(102, 302, 50, 50);
ellipse(91, 332, 40, 40);
ellipse(44, 270, 100, 120);
ellipse(108, 289, 65, 70);
ellipse(94, 249, 40, 40);

ellipse(388, 318, 60, 60); //right bushes
ellipse(357, 328, 40, 40);
ellipse(362, 311, 40, 40);
ellipse(369, 293, 40, 40);
ellipse(339, 293, 40, 40);
ellipse(311, 302, 50, 50);
ellipse(336, 332, 40, 40);
ellipse(371, 268, 100, 90);
    fill(130, 79, 43);
    rectMode(CORNER);
    //rect(0, height*0.90, width, height*0.10);
    
    for (var i = 0; i < sticks.length; i++) {
        sticks[i].draw();
        beaver.checkForStickGrab(sticks[i]);
        sticks[i].x +=  3; //speed
    }
    

    var time = round((millis()- startTime)/1000);
    textSize(18);
    text("Score: " + score, 20, 30);
    text("Time:" + time, 20, 50);
    
    
    if (time >= 10){
        currentScene = 2;
    }
        
    if (keyIsPressed && key.code === 32) {
        beaver.hop();
    } else {
        beaver.fall();
    }
    beaver.draw();
};


};


draw = function() {
    if (currentScene ===0) {
        btn1.handleMouseClick();
        splashScreen();
    }
    else if (currentScene === 1) {
        drawScene1();
        btn1.handleMouseClick();
        btn2.handleMouseClick();
    }
    else if (currentScene === 2) {
        drawScene2();
        btn2.handleMouseClick();
    }
};
