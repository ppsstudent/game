if (isInvinceible)
{
	invTimer -= 1/room_speed;
	if (invTimer < 0)
	{
		invTimer = 0.5;
		isInvinceible = false;
	}
}

turnTimer -= 1/room_speed;
if(turnTimer < 0)
{
	turnTimer = 2.5;
xDirection = -xDirection
}
xVector = xSpeed * xDirection

if (place_meeting(x + xVector, y, oWall))
{
	xDirection = -xDirection;
	turnTimer = 1.5;
}

x = x + xVector;