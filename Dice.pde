Die bob;
void setup()
{
    size(1000, 800);
    noLoop();

}
void draw()
{
    //your code here
    background(187,202,210);
          //your code here
            
     for(int y=41; y<=710; y+=231)
     //3 columns at 100 300 500
    { 
     for(int x=41; x<=926; x+=236)
     //5  rows at 200 400 600 
     {
     Die bob = new Die (x,y);    
     bob.Show();
     bob.Roll();
    } 
    }
}    
void mousePressed()
{
  
    redraw();
}
class Die //models one single dice cube
{
    int roll,myX,myY;//variable declarations here
    Die(int x, int y) //constructor
    {   
        Roll();
        myX=x;
        myY=y;
        //variable initializations here
    }
  
    void Roll()
    {
        //your code here
         roll=((int)(Math.random()*6)+1);
   }
    void Show()
    {
        fill(6);
        rect(myX,myY, 200,200);
        
        if (roll==1)
        {
        fill (255);
        ellipse(myX+100, myY+100, 50, 50);
        } 
        if(roll==2)
        {
        fill (255);
        ellipse(myX+62, myY+103, 50, 50);
        ellipse(myX+135, myY+103, 50, 50);
        }
        if(roll==3)
        {
        fill (255);
        ellipse(myX+99, myY+140, 50, 50);
        ellipse(myX+55, myY+80, 50, 50);
        ellipse(myX+141, myY+80,  50, 50);
        }
        if(roll==4)
        {
        fill (255);
        ellipse(myX+144, myY+68, 50, 50);
        ellipse(myX+54, myY+68, 50, 50);
        ellipse(myX+54, myY+144, 50, 50);
        ellipse(myX+144,myY+144,50,50);
        }
        if(roll==5)
        {
        fill (255);
        ellipse(myX+97, myY+105, 50, 50);
        ellipse(myX+144, myY+68, 50, 50);
        ellipse(myX+54, myY+68, 50, 50);
        ellipse(myX+54, myY+144, 50, 50);
        ellipse(myX+144,myY+144,50,50);
        }
        if(roll==6)
        {
          fill (255);
        ellipse(myX+143, myY+40, 50, 50);
        ellipse(myX+143, myY+93, 50, 50);
        ellipse(myX+143, myY+144, 50, 50);
        ellipse(myX+60,myY+38,50,50);
        ellipse(myX+60, myY+90, 50, 50);
        ellipse(myX+60,myY+144,50,50);
        }
        
    }
    
}
    