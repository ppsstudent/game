if (y <= other.y -other.sprite_height*0.9)

	{
		yVector = jumpForce;
		EnemyHurt();
	}

else
	{
		PlayerHurt();
		
		x = x - xVector*20;
	}