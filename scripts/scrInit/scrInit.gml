for (i = 0; i < 64; i++)
{
	for (j = 0; j < 64; j++)
	{
		mapArray[i,j] = 0;
	}
}

global.arrayTurn[0] = objCharacter;
var enemyCount1 = instance_number(objEnemy)
var enemyCount2 = instance_number(objEnemy2);

for (i = 0; i < enemyCount1; i++)
{
	global.arrayTurn[i + 1] = instance_find(objEnemy, i)	
}

var arrayCount = array_length_1d(global.arrayTurn);

for (i = 0; i < enemyCount2; i++)
{
	global.arrayTurn[i + arrayCount] = instance_find(objEnemy2, i)	
}


global.turnIndex = 0;