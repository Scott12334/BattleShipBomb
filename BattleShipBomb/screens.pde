void startScreen()
{
  background(#838587);
  fill(#d64040);
  textSize(50);
  text("BATTLE SHIP",width/2,height-30);
  rectMode(CENTER);
  fill(#f5bf42);
  strokeWeight(5);
  for (int i=0; i<names.length; i++)
  {
    switch(i)
    {
    case 0:
      if (names[0]==true) {
        strokeWeight(8);
      } else {
        strokeWeight(5);
      }
      rect(2.5*width/5, height/13, buttonW, buttonH);
      break;

    case 1:
      if (names[1]==true) {
        strokeWeight(8);
      } else {
        strokeWeight(5);
      }
      rect(2.5*width/5, height/5, buttonW, buttonH);
      break;
    }
  }
  for (int i=0; i<size.length; i++)
  {
    switch(i)
    {
    case 0:
      if (size[0]==true) {
        strokeWeight(8);
      } else {
        strokeWeight(5);
      }
      rect(width/5, height/3, buttonW, buttonH);
      break;

    case 1:
      if (size[1]==true) {
        strokeWeight(8);
      } else {
        strokeWeight(5);
      }
      rect(2.5*width/5, height/3, buttonW, buttonH);
      break;

    case 2:
      if (size[2]==true) {
        strokeWeight(8);
      } else {
        strokeWeight(5);
      }
      rect(4*width/5, height/3, buttonW, buttonH);
      break;
    }
  }
  strokeWeight(5);
  for (int i=0; i<players.length; i++)
  {
    switch(i)
    {
    case 0:
      if (players[0]==true) {
        strokeWeight(8);
      } else {
        strokeWeight(5);
      }
      circle(width/3, 3*height/5, width/7);
      break;

    case 1:
      if (players[1]==true) {
        strokeWeight(8);
      } else {
        strokeWeight(5);
      }
      circle(2*width/3, 3*height/5, width/7);
      break;
    }
  }
  strokeWeight(5);
  rect(2.5*width/5, 2.5*height/3, buttonW, buttonH);
  textAlign(CENTER);
  fill(0);
  textSize(32);
  text(name2, 2.5*width/5, 1.05*height/5);
  text(name1, 2.5*width/5, 1.05*height/11);
  text("10 by 10", width/5, 1.05*height/3);
  text("15 by 15", 2.5*width/5, 1.05*height/3);
  text("20 by 20", 4*width/5, 1.05*height/3);
  text("Start!", 2.5*width/5, 2.55*height/3);
  textSize(30);
  text("1 Player", width/3, 3.05*height/5);
  text("2 Player", 2*width/3, 3.05*height/5);
}
