void shipSetup()
{
  int adjustment=0;
  if (numberOfCells==14) {
    adjustment=0;
  }
  switch(setup)
  {
  case 0:
    //armada
    ship[2+adjustment][3+adjustment]=true;
    ship[3+adjustment][3+adjustment]=true;
    ship[4+adjustment][3+adjustment]=true;
    ship[5+adjustment][3+adjustment]=true;
    //cruiser 1
    ship[8+adjustment][5+adjustment]=true;
    ship[8+adjustment][6+adjustment]=true;
    ship[8+adjustment][7+adjustment]=true;
    //cruiser 2
    ship[1+adjustment][8+adjustment]=true;
    ship[2+adjustment][8+adjustment]=true;
    ship[3+adjustment][8+adjustment]=true;
    //destroyer 1
    ship[7+adjustment][1+adjustment]=true;
    ship[8+adjustment][1+adjustment]=true;
    //destroyer 2
    ship[0+adjustment][5+adjustment]=true;
    ship[0+adjustment][6+adjustment]=true;
    //sub 1
    ship[6+adjustment][8+adjustment]=true;
    //sub 2
    ship[1+adjustment][1+adjustment]=true;
    //sub 3
    ship[3+adjustment][5+adjustment]=true;
    //sub 4
    ship[4+adjustment][0+adjustment]=true;
    break;

  case 1:
    //armada
    ship[3+adjustment][4+adjustment]=true;
    ship[3+adjustment][5+adjustment]=true;
    ship[3+adjustment][6+adjustment]=true;
    ship[3+adjustment][7+adjustment]=true;
    //cruiser 1
    ship[5+adjustment][8+adjustment]=true;
    ship[6+adjustment][8+adjustment]=true;
    ship[7+adjustment][8+adjustment]=true;
    //cruiser 2
    ship[2+adjustment][0+adjustment]=true;
    ship[2+adjustment][1+adjustment]=true;
    ship[2+adjustment][2+adjustment]=true;
    //destroyer 1
    ship[5+adjustment][1+adjustment]=true;
    ship[5+adjustment][2+adjustment]=true;
    //destroyer 2
    ship[8+adjustment][5+adjustment]=true;
    ship[9+adjustment][5+adjustment]=true;
    //sub 1
    ship[0+adjustment][9+adjustment]=true;
    //sub 2
    ship[6+adjustment][5+adjustment]=true;
    //sub 3
    ship[9+adjustment][0+adjustment]=true;
    //sub 4
    ship[1+adjustment][6+adjustment]=true;
    break;

  case 2:
    //armada
    ship[6+adjustment][3+adjustment]=true;
    ship[6+adjustment][4+adjustment]=true;
    ship[6+adjustment][5+adjustment]=true;
    ship[6+adjustment][6+adjustment]=true;
    //cruiser 1
    ship[0+adjustment][5+adjustment]=true;
    ship[0+adjustment][6+adjustment]=true;
    ship[0+adjustment][7+adjustment]=true;
    //cruiser 2
    ship[9+adjustment][7+adjustment]=true;
    ship[9+adjustment][8+adjustment]=true;
    ship[9+adjustment][6+adjustment]=true;
    //destroyer 1
    ship[4+adjustment][2+adjustment]=true;
    ship[4+adjustment][3+adjustment]=true;
    //destroyer 2
    ship[2+adjustment][0+adjustment]=true;
    ship[3+adjustment][0+adjustment]=true;
    //sub 1
    ship[6+adjustment][8+adjustment]=true;
    //sub 2
    ship[8+adjustment][1+adjustment]=true;
    //sub 3
    ship[3+adjustment][8+adjustment]=true;
    //sub 4
    ship[1+adjustment][2+adjustment]=true;
    break;
  }
}
void shipSetup2()
{
  int adjustment=0;
  switch(numberOfCells)
  {
  case 10:
    adjustment=0;
    break;

  case 15:
    adjustment=(int)random(0, 5);
    break;

  case 20:
    adjustment=(int)random(0, 10);
    break;
  }
  switch(setup2)
  {
  case 0:
    //armada
    ship2[2+adjustment][3+adjustment]=true;
    ship2[3+adjustment][3+adjustment]=true;
    ship2[4+adjustment][3+adjustment]=true;
    ship2[5+adjustment][3+adjustment]=true;
    //cruiser 1
    ship2[8+adjustment][5+adjustment]=true;
    ship2[8+adjustment][6+adjustment]=true;
    ship2[8+adjustment][7+adjustment]=true;
    //cruiser 2
    ship2[1+adjustment][8+adjustment]=true;
    ship2[2+adjustment][8+adjustment]=true;
    ship2[3+adjustment][8+adjustment]=true;
    //destroyer 1
    ship2[7+adjustment][1+adjustment]=true;
    ship2[8+adjustment][1+adjustment]=true;
    //destroyer 2
    ship2[0+adjustment][5+adjustment]=true;
    ship2[0+adjustment][6+adjustment]=true;
    //sub 1
    ship2[6+adjustment][8+adjustment]=true;
    //sub 2
    ship2[1+adjustment][1+adjustment]=true;
    //sub 3
    ship2[3+adjustment][5+adjustment]=true;
    //sub 4
    ship2[4+adjustment][0+adjustment]=true;
    break;

  case 1:
    //armada
    ship2[3+adjustment][4+adjustment]=true;
    ship2[3+adjustment][5+adjustment]=true;
    ship2[3+adjustment][6+adjustment]=true;
    ship2[3+adjustment][7+adjustment]=true;
    //cruiser 1
    ship2[5+adjustment][8+adjustment]=true;
    ship2[6+adjustment][8+adjustment]=true;
    ship2[7+adjustment][8+adjustment]=true;
    //cruiser 2
    ship2[2+adjustment][0+adjustment]=true;
    ship2[2+adjustment][1+adjustment]=true;
    ship2[2+adjustment][2+adjustment]=true;
    //destroyer 1
    ship2[5+adjustment][1+adjustment]=true;
    ship2[5+adjustment][2+adjustment]=true;
    //destroyer 2
    ship2[8+adjustment][5+adjustment]=true;
    ship2[9+adjustment][5+adjustment]=true;
    //sub 1
    ship2[0+adjustment][9+adjustment]=true;
    //sub 2
    ship2[6+adjustment][5+adjustment]=true;
    //sub 3
    ship2[9+adjustment][0+adjustment]=true;
    //sub 4
    ship2[1+adjustment][6+adjustment]=true;
    break;

  case 2:
    //armada
    ship2[6+adjustment][3+adjustment]=true;
    ship2[6+adjustment][4+adjustment]=true;
    ship2[6+adjustment][5+adjustment]=true;
    ship2[6+adjustment][6+adjustment]=true;
    //cruiser 1
    ship2[0+adjustment][5+adjustment]=true;
    ship2[0+adjustment][6+adjustment]=true;
    ship2[0+adjustment][7+adjustment]=true;
    //cruiser 2
    ship2[9+adjustment][7+adjustment]=true;
    ship2[9+adjustment][8+adjustment]=true;
    ship2[9+adjustment][6+adjustment]=true;
    //destroyer 1
    ship2[4+adjustment][2+adjustment]=true;
    ship2[4+adjustment][3+adjustment]=true;
    //destroyer 2
    ship2[0+adjustment][5+adjustment]=true;
    ship2[0+adjustment][6+adjustment]=true;
    //sub 1
    ship2[6+adjustment][8+adjustment]=true;
    //sub 2
    ship[8+adjustment][1+adjustment]=true;
    //sub 3
    ship2[3+adjustment][8+adjustment]=true;
    //sub 4
    ship2[1+adjustment][2+adjustment]=true;
    break;
  }
}
