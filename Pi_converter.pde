void setup(){
  
  int time = millis();
  
  String input = "2pi/3";
 
  String NumeratorString = input.substring( 0, input.indexOf("p")); 
  String DenominatorString = input.substring( input.indexOf("/") +1  , input.length());        
  
  float Numerator = Integer.parseInt(NumeratorString);
  float Denominator = Integer.parseInt(DenominatorString);
  float Arc = PI*(Numerator/Denominator);  
  
  float Degrees = round((Numerator/Denominator)*18000);
  Degrees = Degrees/100;
  String FinalText = NumeratorString + "π/" + DenominatorString + " = " + String.valueOf(Degrees) + "° Degrees";
  
  size(500,500);
  background(0);
  fill(255);
  textFont(createFont("Arial", 18));
  text(FinalText, 150, 220);
  stroke(255);
  fill(0);
  arc(250, 290, 80, 80, 0, 7);
  fill(0,255,0);
  arc(250, 290, 80, 80, -Arc, 0);
  
  println("Your code took", millis()-time+"ms to complete");
 }
