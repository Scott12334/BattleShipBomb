void twoPlayerDisplay()
{
  fill(#f5bf42);
  strokeWeight(5);
  rect(2.5*width/5, 2.6*height/3, buttonW, buttonH);
  strokeWeight(1);
  fill(0);
  textSize(30);
  text("Restart", 2.5*width/5, 2.63*height/3);
  int y=cellY;
  rectMode(CENTER);
  if (numberOfCells==20)
  {
    strokeWeight(0.5);
  } else {
    strokeWeight(1);
  }
  for (int i=0; i<numberOfCells; i++)
  {
    int x=cellX;
    for (int j=0; j<numberOfCells; j++)
    {
      if (uncovered[i][j]==true)
      {
        fill(0, 0, 255);
        if (ship[i][j]==true)
        {
          fill(#86868a);
        }
      } else {
        fill(0);
      }
      stroke(255);
      rect(x, y, cellW, cellH);
      if (mine[i][j]==true &&uncovered[i][j]==true)
      {
        imageMode(CENTER);
        image(bomb, x, y, cellW, cellH);
      }
      x+=cellW;
    }
    y+=cellH;
  }
  y=cellY;
  for (int i=0; i<numberOfCells; i++)
  {
    int x=cellX2;
    for (int j=0; j<numberOfCells; j++)
    {
      if (uncovered2[i][j]==true)
      {
        fill(0, 0, 255);
        if (ship2[i][j]==true)
        {
          fill(#86868a);
        }
      } else {
        fill(0);
      }
      stroke(255);
      rect(x, y, cellW, cellH);
      if (mine2[i][j]==true &&uncovered2[i][j]==true)
      {
        imageMode(CENTER);
        image(bomb, x, y, cellW, cellH);
      }
      x+=cellW;
    }
    y+=cellH;
  }
  stroke(0);
  textAlign(CENTER);
  textSize(32);
  fill(0);
  text("Ships left", width/4, 3*height/4-40);
  text(shipsLeft, width/4, 3*height/4);
  fill(0);
  if (shipsLeft<=0)
  {
    player1Won=false;
    gameOver=true;
    score2+=10;
  }
  text("Ships left", 3*width/4, 3*height/4-40);
  text(shipsLeft2, 3*width/4, 3*height/4);
  fill(0);
  if (shipsLeft2<=0)
  {
    player1Won=true;
    gameOver=true;
    score+=10;
  }
}

//sinlge player Display
void gameDisplay()
{
  fill(#f5bf42);
  strokeWeight(5);
  rect(2.5*width/5, 2.6*height/3, buttonW, buttonH);
  strokeWeight(1);
  fill(0);
  textSize(30);
  text("Restart", 2.5*width/5, 2.63*height/3);
  int y=cellY;
  rectMode(CENTER);
  for (int i=0; i<numberOfCells; i++)
  {
    int x=cellX;
    for (int j=0; j<numberOfCells; j++)
    {
      if (uncovered[i][j]==true)
      {
        fill(0, 0, 255);
        if (ship[i][j]==true)
        {
          fill(#86868a);
        }
      } else {
        fill(0);
      }
      stroke(255);
      rect(x, y, cellW, cellH);
      if (mine[i][j]==true &&uncovered[i][j]==true)
      {
        imageMode(CENTER);
        image(bomb, x, y, cellW, cellH);
      }
      x+=cellW;
    }
    y+=cellH;
  }
  stroke(0);
  textAlign(CENTER);
  textSize(32);
  text("Ships left", width/12, height/2);
  text(shipsLeft, width/12, height/2+40);
  fill(0);
  if (shipsLeft<=0)
  {
    gameOver=true;
    score+=10;
  }
}

void scoreDisplay()
{
  fill(0);
  textSize(32);
  textAlign(CENTER);
  if (players[0]==true) {
    text("Score:"+score, width/2, height/10);
    text(name1,width/2,height/13);
  } else
  {
    text("Score: "+score, width/4, height/4);
    text(name1, width/4, height/5);
    text("Score: "+score2, 3*width/4, height/4);
    text(name2, 3*width/4, height/5);
    if (player1Turn==true) {
      text("It's Player 1's turn!", width/2, height/10);
    } else {
      text("It's Player 2's turn!", width/2, height/10);
    }
    text(timer, width/2, 4*height/5);
    if (frameCount%60==0)
    {
      timer--;
    }
    if (timer<=0)
    {
      if (player1Turn==true) {
        player1Turn=false;
      } else {
        player1Turn=true;
      }
      timer=20;
    }
  }
}
void winner()
{
  
}
