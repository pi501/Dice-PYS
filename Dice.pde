  int roll;
  int sum;
  void setup()
  {
      noLoop();
      size(500,500);
  }
  void draw()
  {
      background(235,235,235);
      for(int i = 0; i <= 500; i += 50)
      {
        for (int z = 0; z <=400; z += 50)
          {
          Die bob = new Die(i,z);
          bob.roll();
          bob.show();
          }
      }
      text(str(sum), 250, 480);
  }
  void mousePressed()
  {
      redraw();
      sum = 0;
  }
  class Die //models one single dice cube
  {
      int MyX;
      int MyY;
      
      Die(int x, int y) //constructor
      {
          MyX = x;
          MyY = y;
      }
      void roll()
      {
          roll = (int)(Math.random()*6 +1);
          sum = sum + roll;
      }
      void show()
      {
        fill(255,255,255);
        rect(MyX,MyY,50,50);
        if (roll == 1)
        {
          fill(0,0,0);
          ellipse(MyX+25, MyY+25, 12,12);
        }
        if (roll == 2)
        {
          fill(0,0,0);
          ellipse(MyX+35, MyY+15, 12,12);
          ellipse(MyX+15, MyY+35, 12,12);
        }
        if (roll == 3)
        {
          fill(0,0,0);
          ellipse(MyX+38, MyY+12, 12,12);
          ellipse(MyX+12, MyY+38, 12,12);
          ellipse(MyX+25,MyY+25,12,12);
        }
        if (roll == 4)
        {
          fill(0,0,0);
          ellipse(MyX+35, MyY+15, 12,12);
          ellipse(MyX+15, MyY+35, 12,12);
          ellipse(MyX+35,MyY+35,12,12);
          ellipse(MyX+15,MyY+15,12,12);
        }
        if (roll == 5)
        {
          fill(0,0,0);
          ellipse(MyX+38, MyY+12, 12,12);
          ellipse(MyX+12, MyY+38, 12,12);
          ellipse(MyX+38,MyY+38,12,12);
          ellipse(MyX+12,MyY+12,12,12);
          ellipse(MyX+25,MyY+25,12,12);
        }
        if (roll == 6) 
        {
          fill(0,0,0);
          ellipse(MyX+40, MyY+10, 12,12);
          ellipse(MyX+10, MyY+40, 12,12);
          ellipse(MyX+40,MyY+40,12,12);
          ellipse(MyX+10,MyY+10,12,12);
          ellipse(MyX+10,MyY+25,12,12);
          ellipse(MyX+40,MyY+25,12,12);
        }
      }
  }
