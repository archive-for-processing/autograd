class Code {
//maxX = ... 1920  .., maxY = 1080

int leftPaddleX, leftPaddleY, paddleWidth, paddleHeight, rightPaddleX, rightPaddleY; //varaibles for paddles
int xBall, yBall, ballWidth, ballHeight; //variables for ball
int leftScore, leftScoreX, rightScore, rightScoreX, scoreY, txtSize; //variables for scores
int x = 0;
int xSpeed, ySpeed;
int radius;

boolean gameOn;
void once()
{ 
  //  size(1920, 1080); //sets the width and height of the program  
  leftPaddleX = 0;
  leftPaddleY = 0;
  rightPaddleX = 1872;
  rightPaddleY = 864;
  paddleWidth = 48;
  paddleHeight = 216;
  
  radius = ballWidth/2;
  
  xBall = 960;
  yBall = 540;
  ballWidth = 50;
  ballHeight = 50;
  
  leftScore = 0;
  leftScoreX = 480;
  rightScore = 5;
  rightScoreX = 1440; 
  scoreY = 540;
  txtSize = 60;
  
  xSpeed = 2;
  ySpeed = 2;
}

void forever()
{
  background(0); //set background black
  
  fill(45, 6, 233); 
  ellipse(xBall, yBall, ballWidth, ballHeight); //draw circle at center
  
  //fill(255);
  fill(66, 227, 90);
  rect(leftPaddleX, leftPaddleY, paddleWidth, paddleHeight); //left paddle at top left 
  
  //Draw paddles
  fill(66, 227, 90);
  
  rect(rightPaddleX, rightPaddleY, paddleWidth, paddleHeight); //right paddle at the bottom right
  
  //Draw scores on screen
  stroke (0, 25, 255); //use a blue outline for all shapes
  //  textSize(txtSize); //size of the text 
  text(leftScore, leftScoreX, scoreY);  //left score at the left corner of the screen
  text(rightScore, rightScoreX, scoreY); //right score at right corner of the screen
  
  //Set game to be on when screen is touched
  if (mousePressed)
  {
    gameOn = true;
  }
  
  //Move ball if game is on 
  if (gameOn)
  {
    xBall = xBall + xSpeed; //increase the x position of the ball by x speed
    yBall = yBall + ySpeed; //increase the y position of the ball by y speed
  } else
  {
    xBall = width/2; //set the horizontal position of the ball to half of the width
    yBall = height/2; //set the vertical position of the ball to half of the height
  }
  
  //Check if ball completely exits left side of the screen 
  if (xBall - radius <= 0) //if the ball exits the left side of the screen 
  {
    rightScore = rightScore + 1; //increment the right player's score by one
    gameOn = false;
  } 
  
  //Check if ball completely exits right side of the screen 
  if (xBall + radius >= width) //if the ball exits the right side of the screen 
  {
    leftScore = leftScore + 1; //increment the right player's score by one
    gameOn = false;
  }
  
  //Check if ball hits top and bottom sides of the screen 
  if (yBall - radius <= 0 || yBall + radius >= height) //if the ball hits the top or bottom sides of the screen 
  {
    ySpeed *= -1; //then reverse the polarity of the vertical speed so the ball moves in the opposite vertical direction
  }
}
}