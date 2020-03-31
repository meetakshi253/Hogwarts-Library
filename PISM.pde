//this code was developed my Meetakshi Setiya, Tathagat Pal and Kushal Juneja, IIITD
import processing.serial.*;


Serial myPort;
int inByteflex1, inByteflex2, inByte0=1, inByte1=1, inByte2=1,inByte3=1,inByte4=1,inByte5=1,inByte6=1, inByte7=1;
int c1=0,c2,c3,c4;
int home=1, xlogo=200,xhisrom=200,xhisrom2=200,xhisrom3=200,xhisthr1=200,xhisthr2=200,xhisthr3=200,xnonb1=200,xnonb2=200,xnonb3=200,xnonpp1=200,xnonpp2=200,xnonpp3=200;
int xhisthr33=200,xfanthr1=200,xfanthr2=200,xfanthr3=200,xromfan1=200,xromfan2=200,xromfan3=200,xromthr1=200,xromthr2=200,xromthr3=200,xhisfan1=200,xhisfan2=200,xhisfan3=200;
//Fiction: Historical Romance Fantasy Thriller
int fic=0, his=0, rom=0, thr=0, fan=0;
int non=0, bio=0, pp=0, yhisrom3=0;
int num1=0,num2=1,num3=1,num4=1,num5=1,num6=1,num7=1,num8=1; int t;
int hisrom=0;
PImage h,hisrom1,hisrom2,hisrom3,g21,g22,g23,g31,g32,g33,g41,g42,g43,g51,g52,g53,g61,g62,g63,g71,g72,g73,g81,g82,g83;

void setup()
{
  fullScreen();
  //size(1950,1000);
  noStroke();
  h=loadImage("Presentation.001.jpeg");
  hisrom1=loadImage("1GoneWithTheWind.jpeg"); //hisrom1
  hisrom2=loadImage("2pride.jpeg"); //hisrom2
  hisrom3=loadImage("3stormandsilence.jpeg"); //hisrom3
  g21=loadImage("g21.png");
  g22=loadImage("g22.png");
  g23=loadImage("g23.png");
  g31=loadImage("g31.png");
  g32=loadImage("g32.png");
  g33=loadImage("g33.png");
  g41=loadImage("g41.png");
  g42=loadImage("g42.png");
  g43=loadImage("g43.png");
  g51=loadImage("g51.png");
  g52=loadImage("g52.png");
  g53=loadImage("g53.png");
  g61=loadImage("g61.png");
  g62=loadImage("g62.png");
  g63=loadImage("g63.png");
  g71=loadImage("g71.png");
  g72=loadImage("g72.png");
  g73=loadImage("g73.png");
  g81=loadImage("g81.png");
  g82=loadImage("g82.png");
  g83=loadImage("g83.png");
  ///println(Serial.list());
  //if you run the code while connecting it to arduino, remove the commented part below
  /*println(Serial.list().toString());
  printArray(Serial.list());
  myPort=new Serial(this, Serial.list()[0], 9600);
  myPort.bufferUntil('\n');*/
}
  
  void serialEvent(Serial myPort) {
  // get the ASCII string:
  String inString = myPort.readStringUntil('\n');
  if (inString != null) {
    // trim off any whitespace:
    inString = trim(inString);
    //inByte=float(inString);
    //println(inByte);
    // convert to an int and map to the HArry's movements:
    String[] val=inString.split("-");
    //inByteflex1=int(val[0]);
    //inByteflex2=int(val[1]);
    inByte0=int(val[0]);
    inByte1=int(val[1]);
    inByte2=int(val[2]);
    inByte3=int(val[3]);
    inByte4=int(val[4]);
    inByte5=int(val[5]);
    inByte6=int(val[6]);
    inByte7=int(val[7]);
    inByteflex1=int(val[8]);
    inByteflex2=int(val[9]);
    println(inString);
}
}


void select()
{
  if((inByte1==0 && inByte0==0 && inByte2==0)) //g1
  {
  fic=his=rom=1;home=non=fan=thr=pp=bio=0;}
  
  else if((inByte1==0 && inByte0==0 && inByte3==0)) //g2
  {
  fic=his=thr=1;home=non=fan=pp=home=bio=0;}
   
  else if((inByte1==0 && inByte4==0 && inByte2==0)) //g3
  {
  fic=fan=thr=1; home=non=pp=his=rom=home=bio=0;}
  
  else if((inByte1==0 && inByte4==0 && inByte3==0)) //g4
  {
  fic=fan=rom=1; home=non=pp=bio=his=home=thr=0;}
  
  else if((inByte1==0 && inByte3==0 && inByte2==0)) //g5
  {
  fic=rom=thr=1; home=non=bio=pp=his=home=fan=0;}
   
  else if((inByte1==0 && inByte4==0 && inByte0==0)) //g6
  {
  fic=fan=his=1; home=non=bio=thr=home=rom=0;}
  
  else if((inByte7==0 && inByte6==0)) //g7
  {
  non=bio=1; home=fan=his=thr=rom=home=fic=0;}
  
  else if((inByte7==0 && inByte5==0))
  {
  non=pp=1; home=fic=his=rom=fan=home=thr=0;}
else if(inByte1==1 && inByte2==1 && inByte2==1 && inByte3==1 && inByte4==1 && inByte5==1 && inByte6==1 && inByte7==1)
{
  non=0;
  pp=0;
  bio=0;
  his=0;
  rom=0;
  fan=0;
  thr=0;
  fic=0;
  home=1;
}
}



void draw()
{
  background(0,0,0);
  if(home==1)
  {
  image(h,xlogo,0,1500,1050);
  }
  
//  select();
  //swipeLeft();
  //swipeRight();
  if(fic==1 && his==1 && rom==1) //1 data from blocks HISTORY ROMANCE
  {
    //delay(250);
    switch(num1)
    {
      case 0:
        image(hisrom1,xhisrom,0,1500,1050);
        break;
 
      case 1: 
        image(hisrom2,xhisrom2,0,1500,1050);
        break;
        
      case 2:
        image(hisrom3,xhisrom3,yhisrom3,1500,1050);
        break;
        default:
          break;
    }
  }
  
  
  if(fic==1 && his==1 && thr==1) //2 data from blocks HISTORY THRILLER
  {
    //delay(100);
    switch(num2)
    {
      case 0:
        image(g21,xhisthr1,0,1500,1050);
        break;
 
      case 1:
        image(g22,xhisthr2,0,1500,1050);
        break;
      
      case 2:
        image(g23,xhisthr33,0,1500,1050);
        break;
        
       default:
          break;
    }
  }
  
  if(fic==1 && fan==1 && thr==1) //3 data from blocks FANTASY THRILLER
  {
    //delay(100);
    switch(num3)
    {
      case 0:
        image(g31,xfanthr2,0,1500,1050);
        break;
 
      case 1:
        image(g32,xfanthr1,0,1500,1050);
        break;
      
      case 2:
        image(g33,xfanthr3,0,1500,1050);
        break;
        
       default:
          break;
    }
  }
  
  if(fic==1 && fan==1 && rom==1) //4 data from blocks ROMANCE FANTASY
  {
    //delay(100);
    switch(num4)
    {
      case 0:
        image(g41,xromfan1,0,1500,1050);
        break;
 
      case 1:
        image(g42,xromfan2,0,1500,1050);
        break;
     
      case 2:
        image(g43,xromfan3,0,1500,1050);
        break;
        
       default:
          break;
    }
  }
  
  if(fic==1 && thr==1 && rom==1) //5 data from blocks THRILLER ROMANCE
  {
    //delay(100);
    switch(num5)
    {
      case 0:
        image(g51,xromthr1,0,1500,1050);
        break;
 
      case 1:
        image(g52,xromthr2,0,1500,1050);
        break;
     
      case 2:
        image(g53,xromfan3,0,1500,1050);
        break;
        
       default:
          break;
    }
  }
  
  if(fic==1 && his==1 && fan==1) //6 data from blocks HISTORICAL FANTASY
  {
    //delay(100);
    switch(num6)
    {
      case 0:
        image(g61,xhisfan1,0,1500,1050);
        break;
 
      case 1:
        image(g62,xhisfan2,0,1500,1050);
        break;
     
      case 2:
        image(g63,xhisfan3,0,1500,1050);
        break;
        
       default:
          break;
    }
  }
  
  if(non==1 && bio==1) //6 data from blocks HISTORICAL FANTASY
  {
    //delay(100);
    switch(num7)
    {
      case 0:
        image(g71,xnonb1,0,1500,1050);
        break;
 
      case 1:
        image(g72,xnonb2,0,1500,1050);
        break;
     
      case 2:
        image(g73,xnonb3,0,1500,1050);
        break;
        
       default:
          break;
    }
  }
    
  if(non==1 && pp==1) //7 data from blocks HISTORICAL FANTASY
  {
    //delay(100);
    switch(num8)
    {
      case 0:
        image(g81,xnonpp1,0,1500,1050);
        break;
 
      case 1:
        image(g82,xnonpp2,0,1500,1050);
        break;
     
      case 2:
        image(g83,xnonpp3,0,1500,1050);
        break;
        
       default:
          break;
    }
  } 
  if(key=='e'|| home==1) //gesture for home
  {
    image(h,xlogo,0,1500,1050);
    
  fic=0; non=0; his=0; fan=0;thr=0;rom=0;pp=0;bio=0;
  }
}



void swipeLeft(){
if(inByteflex1<700) //data from flex
    {
      num1+=1;
      if(num1==3)
      {
        num1=0;
      }
      
      num2+=1;
      if(num2==3)
      {
        num2=0;
      }
      
      num3+=1;
      if(num3==3)
      {
        num3=0;
      }
      
      num4+=1;
      if(num4==3)
      {
        num4=0;
      }
      
      num5+=1;
      if(num5==3)
      {
        num5=0;
      }
      
      num6+=1;
      if(num6==3)
      {
        num6=0;
      }
      
      num7+=1;
      if(num7==3)
      {
        num7=0;
      }
      
      num8+=1;
      if(num8==3)
      {
        num8=0;
      }
    }
   }

void swipeRight()
{
  if(inByteflex2<80)
  {
      if(num1==0)
      {
        num1=2;
      }
      else
        num1-=1;
        
        if(num2==0)
      {
        num2=2;
      }
      else
        num2-=1;
        
        if(num3==0)
      {
        num3=2;
      }
      else
        num3-=1;
        
        if(num4==0)
      {
        num4=2;
      }
      else
        num4-=1;
        
        if(num5==0)
      {
        num5=2;
      }
      else
        num5-=1;
        
        if(num6==0)
      {
        num6=2;
      }
      else
        num6-=1;
        
        if(num7==0)
      {
        num7=2;
      }
      else
        num7-=1;
        
        if(num8==0)
      {
        num8=2;
      }
      else
        num8-=1;
    }
}



void keyReleased(){
 if(key=='n') //data from ultrasonic
    {
      num1+=1;
      if(num1==3)
      {
        num1=0;
      }
      
      num2+=1;
      if(num2==3)
      {
        num2=0;
      }
      
      num3+=1;
      if(num3==3)
      {
        num3=0;
      }
      
      num4+=1;
      if(num4==3)
      {
        num4=0;
      }
      
      num5+=1;
      if(num5==3)
      {
        num5=0;
      }
      
      num6+=1;
      if(num6==3)
      {
        num6=0;
      }
      
      num7+=1;
      if(num7==3)
      {
        num7=0;
      }
      
      num8+=1;
      if(num8==3)
      {
        num8=0;
      }
    }
    if(key=='p') //data from gyro
    {
      if(num1==0)
      {
        num1=2;
      }
      else
        num1-=1;
        
        if(num2==0)
      {
        num2=2;
      }
      else
        num2-=1;
        
        if(num3==0)
      {
        num3=2;
      }
      else
        num3-=1;
        
        if(num4==0)
      {
        num4=2;
      }
      else
        num4-=1;
        
        if(num5==0)
      {
        num5=2;
      }
      else
        num5-=1;
        
        if(num6==0)
      {
        num6=2;
      }
      else
        num6-=1;
        
        if(num7==0)
      {
        num7=2;
      }
      else
        num7-=1;
        
        if(num8==0)
      {
        num8=2;
      }
      else
        num8-=1;
    }
    
  if(key=='a') //g1
  {
  fic=his=rom=1;home=non=fan=thr=pp=bio=0;}
  
  else if(key=='s') //g2
  {
  fic=his=thr=1;home=non=fan=pp=bio=0;}
   
  else if(key=='d') //g3
  {
  fic=fan=thr=1; home=non=pp=his=rom=bio=0;}
  
  else if(key=='f') //g4
  {
  fic=fan=rom=1; home=non=pp=bio=his=thr=0;}
  
  else if(key=='g') //g5
  {
  fic=rom=thr=1; home=non=bio=pp=his=fan=0;}
   
  else if(key=='h') //g6
  {
  fic=fan=his=1; home=non=bio=thr=rom=0;}
  
  else if(key=='j') //g7
  {
  non=bio=1; home=fan=his=thr=rom=fic=0;}
  
  else if(key=='k')
  {
  non=pp=1; home=fic=his=rom=fan=thr=0;}
}
