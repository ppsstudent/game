if (isInvinceible)
{
	invTimer -= 1/room_speed;
	if (invTimer < 0)
	{
		invTimer = 0.5;
		isInvinceible = false;
	}
}


xDirection = sign(oPlayer.x - x);
xVector = xSpeed * xDirection;

if (abs(oPlayer.x - x) < 130)
{
	x = x + xVector
}