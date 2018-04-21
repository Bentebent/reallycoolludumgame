for (i = 0; i < 64; i++)
{
	for (j = 0; j < 64; j++)
	{
		mapArray[i,j] = 0;
	}
}

global.arrayTurn[0] = objCharacter;
var enemyCount = instance_number(objEnemy);

for (i = 0; i < enemyCount; i++)
{
	global.arrayTurn[i + 1] = instance_find(objEnemy, i)	
}

global.turnIndex = 0;