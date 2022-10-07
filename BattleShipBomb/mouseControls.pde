void mouseReleased()
{
  mouseReady=true;
}
void mousePressed()
{
  if (gameOver==false)
  {
    int clickLength=playableX/numberOfCells;
    if (mouseX>((width/5)-cellW/2) && mouseX<((width/5)-cellW/2)+cellW*numberOfCells &&(mouseY>(cellY-cellH/2) && mouseY<(cellY-cellH/2)+cellH*numberOfCells) && gameStarted==true && players[0]==true)
    {
      int xLocation= (mouseX-((width/5)-cellW/2))/clickLength;
      int yLocation= (mouseY-(cellY-cellH/2))/clickLength;
      if (uncovered[yLocation][xLocation] == false)
      {
        uncovered[yLocation][xLocation] = true;
        if (mine[yLocation][xLocation] == true)
        {
          score--;
        }
        if (ship[yLocation][xLocation] == true)
        {
          score++;
          shipsLeft--;
        }
      }
    }
    if (mouseX>(cellX-cellW/2) && mouseX<(cellX-cellW/2)+cellW*numberOfCells &&(mouseY>(cellY-cellH/2) && mouseY<(cellY-cellH/2)*cellH*numberOfCells) && gameStarted==true && players[1]==true && player1Turn==false)
    {
      int xLocation= (mouseX-(cellX-cellW/2))/clickLength;
      int yLocation= (mouseY-(cellY-cellH/2))/clickLength;
      if (uncovered[yLocation][xLocation] == false)
      {
        uncovered[yLocation][xLocation] = true;
        player1Turn=true;
        timer=20;
        if (mine[yLocation][xLocation] == true)
        {
          score2--;
        }
        if (ship[yLocation][xLocation] == true)
        {
          score2++;
          shipsLeft--;
          player1Turn=false;
        }
      }
    }
    if (mouseX>(cellX2-cellW/2) && mouseX<(cellX2-cellW/2)+cellW*numberOfCells &&(mouseY>(cellY-cellH/2) && mouseY<(cellY-cellH/2)*cellH*numberOfCells) && gameStarted==true && players[1]==true && player1Turn==true)
    {
      int xLocation= (mouseX-(cellX2-cellW/2))/clickLength;
      int yLocation= (mouseY-(cellY-cellH/2))/clickLength;
      if (uncovered2[yLocation][xLocation] == false)
      {
        uncovered2[yLocation][xLocation] = true;
        player1Turn=false;
        timer=20;
        if (mine2[yLocation][xLocation] == true)
        {
          score--;
        }
        if (ship2[yLocation][xLocation] == true)
        {
          score++;
          shipsLeft2--;
          player1Turn=true;
        }
      }
    }
    if (gameStarted==false && betterDis(mouseX, mouseY, (width/5)-buttonW/2, (width/5)+buttonW/2, (height/3)-buttonH/2, (height/3)+buttonH/2)==true)
    {
      size[0]=true;
      size[1]=false;
      size[2]=false;
    }
    if (gameStarted==false && betterDis(mouseX, mouseY, (2.5*width/5)-buttonW/2, (2.5*width/5)+buttonW/2, (height/3)-buttonH/2, (height/3)+buttonH/2)==true)
    {
      size[1]=true;
      size[0]=false;
      size[2]=false;
    }
    if (gameStarted==false && betterDis(mouseX, mouseY, (4*width/5)-buttonW/2, (4*width/5)+buttonW/2, (height/3)-buttonH/2, (height/3)+buttonH/2)==true)
    {
      size[2]=true;
      size[1]=false;
      size[0]=false;
    }
    if (gameStarted==false && betterDis(mouseX, mouseY, (2.5*width/5)-buttonW/2, (2.5*width/5)+buttonW/2, (height/5)-buttonH/2, (height/5)+buttonH/2)==true)
    {
      names[0]=false;
      names[1]=true;
    }
    if (gameStarted==false && betterDis(mouseX, mouseY, (2.5*width/5)-buttonW/2, (2.5*width/5)+buttonW/2, (height/13)-buttonH/2, (height/13)+buttonH/2)==true)
    {
      names[1]=false;
      names[0]=true;
    }
    if (gameStarted==false && betterDis(mouseX, mouseY, (2.5*width/5)-buttonW/2, (2.5*width/5)+buttonW/2, (2.5*height/3)-buttonH/2, (2.5*height/3)+buttonH/2)==true)
    {
      if (players[0]==true) {
        gameSetup();
      } else {
        twoPlayerSetup();
      }
      gameStarted=true;
      mouseReady=false;
    }
    if (gameStarted==false && dist(mouseX, mouseY, width/3, 3*height/5)<width/7)
    {
      players[0]=true;
      players[1]=false;
    }
    if (gameStarted==false && dist(mouseX, mouseY, 2*width/3, 3*height/5)<width/7)
    {
      players[0]=false;
      players[1]=true;
    }
    if (gameStarted==true && betterDis(mouseX, mouseY, (2.5*width/5)-buttonW/2, (2.5*width/5)+buttonW/2, (2.6*height/3)-buttonH/2, (2.6*height/3)+buttonH/2)==true && mouseReady==true)
    {
      setup();
    }
    mouseReady=false;
  } else
  {
    setup();
  }
}
