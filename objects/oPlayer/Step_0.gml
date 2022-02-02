//code that runs every frame

levelTimer -= 1/room_speed;

if (levelTimer <= 0)
{
	room_restart();
}

//keyyboard check and inputs
right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
jump = keyboard_check_pressed(vk_space);

//Horizontal Movement
xDirection = right - left;
xVector = xSpeed * xDirection;

//Wall Bounds

if (place_meeting(x + xVector, y, oWall))
	{
		//check one pixel of left or right until collision yo oWall
		// ! = not
		while(!place_meeting(x + xVector, y, oWall))
		{
		// move 1 pixel a time until collision
		x = x + xDirection;
		}
		xVector = 0;
	}
//otherwie move normal
x = x + xVector;

//Vertical Movement 
yVector = yVector + grv;

if (place_meeting(x, y + yVector, oWall))
	{
		//check one pixel of up and down until collision yo oWall
		// ! = not
		//sight = return pos and neg
		while(!place_meeting(x, y + sign(yVector), oWall))
		{
		// move 1 pixel a time until collision
		y = y + sign(yVector);
		}
		yVector = 0;
	}
//otherwie move normal
y = y + yVector;


// if touch oWall press jump to jump
if (place_meeting(x, y + 1, oWall) and (jump))
{
	yVector = jumpForce;
}

if (y>= room_height)
	
	{
		PlayerDeath();
	}