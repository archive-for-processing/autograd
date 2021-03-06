int rectX, rectY, rectA, rectB, rectWidth, rectHeight;//declares variables for paddles
int ballX, ballY, diameter;//declares variables for the ball
int playerX, playerY;
float textWidthX, textWidthY;
int textHeightX, textHeightY;//declares variables for players scores
int size;
int ballXSpeed, ballYSpeed;//declares the movement of ball
 
void setup() //runs once
{
    fullScreen(); //sets full screen
    rectX= 0; rectY= 0;
    rectA=930; rectB=448;
    rectWidth= width/30;
    rectHeight=height/6; //initializes the variables created for the paddles
    ballX=width/2; ballY=height/2;
    diameter=20;//initializes the variables for the ball
    ballXSpeed= 3;
    ballYSpeed= 1;//initializes ball speed at certain direction and speed
    playerX=6; playerY=2; textWidthX=width/2.5; textHeightX=height/2;
    textWidthY=width/1.6; textHeightY=height/2;//initializes variables for the ball
    size=25;//initializes textsize
   
}

void draw() //runs continually
{ 
    background(87);//sets the background colour to gray
    fill(0,0,255);//sets the interior of paddles to blue
    stroke(0,128,0);//sets outline to green
    rect(rectX,rectY, rectWidth, rectHeight); //draws a rectangle 
    rect(rectA,rectB, rectWidth, rectHeight); //draws a rectangle at the other end.
    fill(255,0,0);//sets ellipse to red
    ellipse(ballX, ballY, diameter, diameter);//to draw ellipse
    ballX+= ballXSpeed;//increases ball movement to right
    ballY-= ballYSpeed;//increases ball movement up
    textSize(25); //set text size to 25
    text(playerX, textWidthX, textHeightX); //writes text on screen
    textSize(size); //set text size to 25
    text(playerY, textWidthY, textHeightY); //writes text score on other side of screen
  }
