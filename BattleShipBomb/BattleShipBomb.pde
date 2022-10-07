//variables for the tiles
boolean[][] uncovered;
boolean[][] ship;
boolean[][] mine;
boolean[][] uncovered2;
boolean[][] ship2;
boolean[][] mine2;
boolean[] size;
boolean[] players;
int cellW;
int cellH;
int cellX;
int cellX2;
int cellY;
int score=0;
int score2=0;
int mines=0;
int mines2=0;
PImage bomb;
int setup;
int setup2;
boolean gameStarted=false;
int numberOfCells=14;
float buttonW;
float buttonH;
boolean gameOver=false;
int playableX;
int timer;
boolean player1Turn;
boolean player1Won;
String name1;
String name2;
boolean names[];
int[] scores;
String[] scoreBoardNames;
int changedSpot;
int shipsLeft;
int shipsLeft2;
boolean mouseReady=true;
boolean save=false;

void setup()
{
  size(900, 900);
  bomb= loadImage("Bomb.png");
  gameStarted=false;
  gameOver=false;
  size= new boolean[3];
  players= new boolean[2];
  names= new boolean[2];
  players[0]=true;
  size[0]= true;
  size[1]= false;
  size[2]= false;
  buttonW=width/5;
  buttonH=height/10;
  name1="";
  name2="";
  scores= new int[10];
  scoreBoardNames= new String[10];
  loadScore("scores.txt");
  mines=0;
  mines2=0;
  save=false;
  score=0;
  score2=0;
}
void draw()
{
  background(255);
  if (gameStarted==false)
  {
    startScreen();
  } else if (gameOver==false)
  {
    if (players[0]==true) {
      gameDisplay();
    } else {
      twoPlayerDisplay();
    }
    scoreDisplay();
  } else if (gameOver==true)
  {
    if (players[0]==true) {
      background(0);
      fill(255, 0, 0);
      textSize(50);
      text("Your final score was: "+score, width/2, 1.05*height/3);
      textSize(40);
      text("Click anywhere to restart", width/2, 1.05*height/2);
      player1Won=true;
    } else
    {
      background(0);
      fill(255, 0, 0);
      textSize(50);
      if (player1Won==true) {
        text(name1+" won with a score of "+score, width/2, 1.05*height/3);
      } else {
        text(name2+" won with a score of "+score, width/2, 1.05*height/3);
      }
      textSize(40);
      text("Click anywhere to restart", width/2, 1.05*height/2);
    }
    saveScore1("scores.txt");
  }
}


void keyPressed()
{
  if (key!=CODED)
  {
    if (names[0]==true)
    {
      name1= name1 +key;
    } else if (names[1]==true)
    {
      name2= name2 +key;
    }
  }
}
public boolean betterDis(float x, float y, float lX, float rX, float uY, float dY)
{
  if (x>lX && x<rX && y>uY && y<dY)
  {
    return true;
  } else {
    return false;
  }
}
