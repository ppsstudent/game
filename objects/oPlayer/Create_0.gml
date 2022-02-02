//code that runs when plyer is created

//how many pixels per frame we want the pixel to move
xSpeed = 4;


//what direction the player is facing (where 1 = right, -1 = left, 0 = front/notmoving)
xDirection = 0;

//how fast and what direction player is moving
xVector = xSpeed * xDirection;

yVector = 0;

//gravity level
grv = 0.4;

jumpForce = -13;

//coins & points
global.coins = 0;
global.points =0;

isInvinceible = false;

//hp
hp = 6;

//leveel timer
levelTimer = 10;