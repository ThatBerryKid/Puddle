//////////////////////////////////////////////
//
// JW.Berry
//
//
//
//
/////////////////////////////////////////////
//obj
Menu menu;

//color
color masterBackground = color( 61, 128, 237);


//floats
float drawSpaceX, drawSpaceY, drawSpaceW, drawSpaceH;


//switches
boolean drawBlockMode = false;
boolean startUpScreen = true;
boolean defaultScreen = true;

void setup() {
  size(750, 650);
  background(masterBackground);
  menu = new Menu(570, 10, 170, 630);
  drawSpaceX =  10;
  drawSpaceY =  10;
  drawSpaceW = 550;
  drawSpaceH = 550;
  surface.setLocation(20, 20);
  rect(drawSpaceX, drawSpaceY, drawSpaceW, drawSpaceH);
}

void draw() {
if (defaultScreen) {
    if (startUpScreen) {
    }

    if(mousePressed && mouseX>menu.x &&mouseX<menu.x+menu.w && mouseY>menu.y && mouseY<menu.y+menu.h){
      drawBlockMode=true;
    }
if(drawBlockMode){
 drawBlock(); 
}
    menu.display();
  }
}

void mousePressed() {
}


void keyPressed() {
  if (keyCode==UP) {
    resetBG();
  }
  if (keyCode==LEFT) {
    drawBlockMode=true;
  }
  if (keyCode==RIGHT) {
    drawBlockMode=false;
  }
}

void resetBG() {
  background(masterBackground);
  rect(drawSpaceX, drawSpaceY, drawSpaceW, drawSpaceH);
}

void drawBlock() {
  int rW  = 50;
  int rH  = 50;
  int rW2 = rW/2;
  int rH2 = rH/2;
  rect(mouseX-rW2, mouseY-rH2, rW, rH);
}

//Code snippets

//clickable
//if(mouseX> &&mouseX< && mouseY> && mouseY<){
//}