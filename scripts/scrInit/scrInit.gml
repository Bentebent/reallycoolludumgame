for (i = 0; i < 64; i++)
{
	for (j = 0; j < 64; j++)
	{
		mapArray[i,j] = 0;
	}
}

arrayTurn[0] = objCharacter;

for (i = 1; i < instance_number(objEnemy);)
{
	arrayTurn[i] = instance_find(objEnemy,i)	
}