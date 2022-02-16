//Max Dodek
//2.3
//Febuary 14, 2022

int bh1,bh2,bh3;
int fh1,fh2,fh3,fh4,fh5,fh6;
int bunny;
int clouds;

void setup (){
  size(800,800);
// initialize background hills
  bh1=0;
  bh2=400;
  bh3=800;
  
// initialize foreground hills
  fh1=0;
  fh2=200;
  fh3=400;
  fh4=600;
  fh5=800;
  fh6=-200;

//initialize bunny 
  bunny=300;

//initialize clouds
  clouds=10;

}
void draw (){
  //sky
  background(2,174,206);
  
  //clouds
 fill(#FFFFFF);
 stroke(#FFFFFF);
  ellipse(clouds + 125,330,100,100); //C1:175
  ellipse(clouds+225,330,100,100); //C2: 175. C1 and C2 overlaps with eachother
  ellipse(clouds +175,340,100,100);
  ellipse(clouds+175,280,100,100);
  //move clouds
  clouds=clouds + 1;
//loup
  if (clouds>900){
    clouds=-300;
  }
  
  
  //bacground hills
  fill(57,196,121);
  stroke(57,196,121);
  
  ellipse(bh1,550,400,400);
  ellipse(bh2,550,400,400);
  ellipse(bh3,550,400,400);
//move hills
  bh1= bh1 +2;
  bh2= bh2 +2;
  bh3= bh3 +2;
//loop hills
  if(bh1>1000) {
    bh1=-200;
  }   
   if(bh2>1000) {
    bh2=-200;
  }
   if(bh3>1000) {
    bh3=-200;
  }



//foreground hills
  fill(1,118,0);
  stroke(1,118,0);
  
  ellipse(fh1,550,200,200);
  ellipse(fh2,550,200,200);
  ellipse(fh3,550,200,200);
  ellipse(fh4,550,200,200);
  ellipse(fh5,550,200,200);
  ellipse(fh6,550,200,200);
//move foreground hills
  fh1=fh1+3;
  fh2=fh2+3;
  fh3=fh3+3;
  fh4=fh4+3;
  fh5=fh5+3;
  fh6=fh6+3;

//loop foreground hills
  if (fh1>900){
   fh1=-100; 
  }
   if (fh2>900){
   fh2=-100; 
  }
   if (fh3>900){
   fh3=-100; 
  }
   if (fh4>900){
   fh4=-100; 
  }
  
   if (fh5>900){
   fh5=-100; 
  }
 
    if (fh6>900){
   fh6=-100; 
  }
 
  //ground
  fill(255,218,82);
  stroke(255,218,82);
  rect(0,550,800,350);
 
// Bunny
fill(#FFFFFF);
stroke(#FFFFFF);

ellipse(bunny,600,200,200);//face

//ears
ellipse(bunny-60,490,35,90);
ellipse(bunny+60,490,35,90);

//eyes
fill(0);
stroke(0);
ellipse(bunny-45,600,25,25); 
ellipse(bunny+45,600,25,25);

//move bunny
bunny= bunny+5;

  if (bunny>1000){
    bunny=-200;
  }
textSize(20);
fill(0);
text( "x:" + mouseX + "y: " + mouseY, mouseX, mouseY); 

}
