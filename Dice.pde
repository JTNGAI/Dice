Die bob,sue,koi,ken,erica,sam,guenne,choy,jo;
void setup()
{
    size(1000, 800);
    noLoop();

}
void draw()
{
    //your code here
    background(187,202,210);
     Die bob = new Die(100,70);
     Die sue= new Die(350,70);
     Die koi= new Die(600,70);
     Die ken= new Die(100,300);
     Die erica= new Die(350,300);
     Die sam= new Die(600,300);
     Die guenne= new Die(100,550);
     Die choy= new Die(350,550);
     Die jo= new Die(600,550);
     bob.Show();
     bob.Roll();
     sue.Show();
     sue.Roll();
     koi.Show();
     koi.Roll();
     ken.Show();
     ken.Roll();
     erica.Show();
     erica.Roll();
     sam.Show();
     sam.Roll();
     guenne.Show();
     guenne.Roll();
     choy.Show();
     choy.Roll();
     jo.Show();
     jo.Roll();
}
void mousePressed()
{
  
    Class Die;
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
        //your code here
        fill(6);
        rect(myX, myY, 200,200);
       
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