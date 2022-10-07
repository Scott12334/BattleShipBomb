//two player
void twoPlayerSetup()
{
  shipsLeft=18;
  shipsLeft2=18;
  player1Turn=true;
  timer=20;
  if (size[0]==true) {
    numberOfCells=10;
  }
  if (size[1]==true) {
    numberOfCells=15;
  }
  if (size[2]==true) {
    numberOfCells=20;
  }
  int numMines= ((numberOfCells*numberOfCells)-18)/10;
  playableX= width/3;
  int playableY= height/3;
  cellX=width/10;
  cellY=height/3;
  cellW=playableX/numberOfCells;
  cellH=playableY/numberOfCells;
  cellX2=(cellX-cellW/2)+(cellW*numberOfCells)+width/6;
  uncovered= new boolean[numberOfCells][numberOfCells];
  ship= new boolean[numberOfCells][numberOfCells];
  mine= new boolean[numberOfCells][numberOfCells];
  uncovered2= new boolean[numberOfCells][numberOfCells];
  ship2= new boolean[numberOfCells][numberOfCells];
  mine2= new boolean[numberOfCells][numberOfCells];
  setup= (int)random(3);
  setup2= (int)random(3);
  //setup=0;
  for (int i=0; i<numberOfCells; i++)
  {
    for (int j=0; j<numberOfCells; j++)
    {
      uncovered[i][j]=false; 
      ship[i][j]=false;
      mine[i][j]=false;
      uncovered2[i][j]=false; 
      ship2[i][j]=false;
      mine2[i][j]=false;
    }
  }
  shipSetup();
  shipSetup2();
  while (mines<numMines)
  {
    int randomX = (int)random(numberOfCells);
    int randomY = (int)random(numberOfCells);
    if (ship[randomX][randomY]==false && mine[randomX][randomY]==false )
    {
      mine[randomX][randomY]=true; 
      mines++;
    }
    int randomX2 = (int)random(numberOfCells);
    int randomY2 = (int)random(numberOfCells);
    if (ship2[randomX2][randomY2]==false && mine2[randomX2][randomY2]==false )
    {
      mine2[randomX2][randomY2]=true; 
      mines2++;
    }
  }
}
//single player setup
void gameSetup()
{
  if (size[0]==true) {
    numberOfCells=10;
  }
  if (size[1]==true) {
    numberOfCells=15;
  }
  if (size[2]==true) {
    numberOfCells=20;
  }
  playableX= 2*width/3;
  int numMines= ((numberOfCells*numberOfCells)-18)/10;
  int playableY= 2*height/3;
  cellX=width/5;
  cellY=height/6;
  cellW=playableX/numberOfCells;
  cellH=playableY/numberOfCells;
  uncovered= new boolean[numberOfCells][numberOfCells];
  ship= new boolean[numberOfCells][numberOfCells];
  mine= new boolean[numberOfCells][numberOfCells];
  shipsLeft=18;
  setup= (int)random(3);
  //setup=0;
  for (int i=0; i<numberOfCells; i++)
  {
    for (int j=0; j<numberOfCells; j++)
    {
      uncovered[i][j]=false; 
      ship[i][j]=false;
      mine[i][j]=false;
    }
  }
  shipSetup();
  while (mines<numMines)
  {
    int randomX = (int)random(numberOfCells);
    int randomY = (int)random(numberOfCells);
    if (ship[randomX][randomY]==false && mine[randomX][randomY]==false )
    {
      mine[randomX][randomY]=true; 
      mines++;
    }
  }
}
