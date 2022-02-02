
function PlayerHurt()
{
	if(!oPlayer.isInvinceible)
	{
		oPlayer.isInvinceible = true;
		alarm_set(0,2*room_speed);
		oPlayer.hp --;
		if (oPlayer.hp < 1)
		{
			PlayerDeath();
		}
	}

}

function PlayerDeath()
{
	room_restart();
	
}