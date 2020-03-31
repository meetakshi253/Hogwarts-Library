
int inPin0 = 11;  // pushbutton connected to digital pin 1
int inPin1 =10 ;  // pushbutton connected to digital pin 2 
int inPin2 = 2;   // pushbutton connected to digital pin 3
int inPin3 = 3;   // pushbutton connected to digital pin 4
int inPin4 = 4;   // pushbutton connected to digital pin 5
int inPin5 = 5;   // pushbutton connected to digital pin 6 
int inPin6 = 6;   // pushbutton connected to digital pin 7
int inPin7 = 7;
void setup() {
 
  Serial.begin(9600);
   pinMode(inPin0, INPUT);      // sets the digital pin 0 as input
  pinMode(inPin1, INPUT);      // sets the digital pin 1 as input
  pinMode(inPin2, INPUT);      // sets the digital pin 2 as input
  pinMode(inPin3, INPUT);      // sets the digital pin 3 as input
  pinMode(inPin4, INPUT);      // sets the digital pin 4 as input
  pinMode(inPin5, INPUT);      // sets the digital pin 5 as input
  pinMode(inPin6, INPUT);      // sets the digital pin 6 as input
  pinMode(inPin7, INPUT);      // sets the digital pin 7 as input
}

void loop() {
  int k,p;
  int val[8];
  int i=0;
  for (i=0;i<=7;++i)
  {
    val[i]=0;
  }
  val[0] = digitalRead(inPin0);   // read the input pin // caucasian
  val[1] = digitalRead(inPin1);   // read the input pin //dev
  val[2] = digitalRead(inPin2);   // read the input pin //blue
  val[3] = digitalRead(inPin3);   // read the input pin//orange
  val[4] = digitalRead(inPin4);   // read the input pin//skin
  val[5] = digitalRead(inPin5);   // read the input pin //black
  val[6] = digitalRead(inPin6);   // read the input pin //pink
  val[7] = digitalRead(inPin7);   // read the input pin //light blue
  // send the value of analog input 0:
   for (i=0;i<=7;++i)
  {
  Serial.print(val[i]);
  Serial.print('-');
  }
  k=analogRead(A0);
  Serial.print(k);
  Serial.print('-');
  p = analogRead(A1);
  Serial.println(p);
 
  // wait a bit for the analog-to-digital converter to stabilize after the last
  // reading:
   
 if (k<700)
  {
   int count=0;
    for (int i=0;i<50;i++)
    {
    if (i<=2)
    {
      delay(20);
       for (int j=0;j<=7;++j)
  {
  Serial.print(val[j]);
  Serial.print('-');
  }
      Serial.print(k);
      count++;
      Serial.print('-');
      Serial.println(analogRead(A1));
    }
    else
    {
       for (int j=0;j<=7;++j)
  {
  Serial.print(val[j]);
  Serial.print('-');
  }
    Serial.print(1000);
    Serial.print('-');
    Serial.println(analogRead(A1));
    delay(20);
    count=0;
    }
}}
  else if(p<80)
  {
    int count=0;
    for (int i=0;i<50;i++)
    {
    if (count<=2)
    {
      delay(20);
       for (int j=0;j<=7;++j)
  {
  Serial.print(val[j]);
  Serial.print('-');
  }
      Serial.print(analogRead(A0));
      count++;
      Serial.print('-');
      Serial.println(p);
    }
    else
    {
       for (int j=0;j<=7;++j)
  {
  Serial.print(val[j]);
  Serial.print('-');
  }
    Serial.print(analogRead(A0));
    Serial.print('-');
    Serial.println(1500);
    delay(20);
    }
  }}
delay(20);
}
