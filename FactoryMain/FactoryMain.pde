KeithFactory keithF= new KeithFactory(200, 200);

void setup(){
   size(800,800);
   background(255, 255, 255);
   
}

void draw(){
 background(255, 255, 255);
 fill(0,0,0);
 text("keith money: "+globalKeithMoney, 100,100);
 keithF.display();
 
 
}