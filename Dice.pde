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
    int sum=0;
          //your code here
            
     for(int y=41; y<=700; y+=230)
     //3 columns 
    { 
     for(int x=41; x<=900; x+=230)
     //4 rows 
     {
     Die bob = new Die (x,y);    
     bob.Show();
     bob.Roll();
     if(bob.roll<10000)
     {
       sum= sum+ bob.roll;
     }
   
    } 
    }
    stroke(0);
    textSize(40);
    text("The Total Amount is: " + sum , 48,764);
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
    