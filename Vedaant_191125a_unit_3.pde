 

import ddf.minim.*;
Minim minim;
AudioPlayer notes;

PImage img;
PImage[] Swim = new PImage[24];
PImage Pool;
PImage turn; 
PImage uturn;

int player1x = 43;
int player2x = 43;
int player3x = 43;
int scene=0;
boolean gameover=false;

void setup()
{
  size (800,800);
  
 smooth();
 
 minim = new Minim(this);
     notes = minim.loadFile("notes.mp3");
 notes.play();
  Swim[0] = loadImage("frame_00_delay-0.05s.gif");
  
  Swim[1] = loadImage( "frame_01_delay-0.05s.gif" );
  
  Swim[2] = loadImage( "frame_02_delay-0.05s.gif" );
  
  Swim[3] = loadImage( "frame_03_delay-0.05s.gif" );
  
  Swim[4] = loadImage( "frame_04_delay-0.05s.gif" );
  
  Swim[5] = loadImage( "frame_05_delay-0.05s.gif" );
  
  Swim[6] = loadImage( "frame_06_delay-0.05s.gif" );
  
  Swim[7] = loadImage( "frame_07_delay-0.05s.gif" );
  
  Swim[8] = loadImage( "frame_08_delay-0.05s.gif" );
  
  Swim[9] = loadImage( "frame_09_delay-0.05s.gif" );
  
  Swim[10] = loadImage( "frame_10_delay-0.05s.gif" );
  
  Swim[11] = loadImage( "frame_11_delay-0.05s.gif" );
  
  Swim[12] = loadImage( "frame_12_delay-0.05s.gif" );
  
  Swim[13] = loadImage( "frame_13_delay-0.05s.gif" );
  
  Swim[14] = loadImage( "frame_14_delay-0.05s.gif" );
  
  Swim[15] = loadImage( "frame_15_delay-0.05s.gif" );
  
  Swim[16] = loadImage( "frame_16_delay-0.05s.gif" );
  
  Swim[17] = loadImage( "frame_17_delay-0.05s.gif" );
  
  Swim[18] = loadImage( "frame_18_delay-0.05s.gif" );
  
  Swim[20] = loadImage( "frame_20_delay-0.05s.gif" );
  
  Swim[21] = loadImage( "frame_21_delay-0.05s.gif" );
  
  Swim[22] = loadImage( "frame_22_delay-0.05s.gif" );
  
  Swim[23] = loadImage( "frame_23_delay-0.05s.gif" );
 uturn = loadImage("uturn.jpeg");
  turn= loadImage("turn.jpeg");
  Pool = loadImage("Pool.png");
}

void draw ()


{
 fill(183,255,254);
  
  rect(0,140,800,400); 
  
  fill(160,160,148 );
  
   rect(0,140,50,400); 
     image ( turn, 0,-100,800,400);
    image( Pool, 0,140,800,400 );
    image ( uturn, 0,550,800,200);
    image( Swim[frameCount%19], player1x,104,200,150 );
  
    image( Swim[frameCount%19],player2x,234,200,150 );
    
     image( Swim[frameCount%19], player3x,364,200,150 );
   player1x = player1x +1;
  player3x = player3x +2;
if (player3x>625){
  noLoop();
}
if (player2x>625){
  noLoop();
}
}
 
void keyPressed() {
  if (keyCode == ' ') { 
    player2x= player2x +12;
  }
}
