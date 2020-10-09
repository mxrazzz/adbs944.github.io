class NumGen {
  int num1;
  int num2;
  int num3;
  int lot1;
  int lot2;
  int lot3;
  int[] totalnum = new int[3];
  int[] lottery = new int[3];
  String loseMsg = "You have lost";

  NumGen() { }
  
   public void draw(){
      fill(0, 102, 153, 255);
      
      text(num1, 120, 100, 150);
      noFill();
      stroke(#FAAF19);
      strokeWeight(4);
      ellipse(130, 90,40, 40);
  
      text(num2, 170, 100, 150);
      noFill();
      ellipse(180, 90,40, 40);
      
      text(num3, 220, 100, 150);
      noFill();
      ellipse(230, 90,40, 40);
  
      text("Match them to win!", 120, 240, 150);
      
      text(lot1, 300, 100, 150);
      noFill();
      ellipse(310, 90,40, 40);
      
      text(lot2, 350, 100, 150);
      noFill();
      ellipse(360, 90,40, 40);
      
      text(lot3, 400, 100, 150);
      noFill();
      ellipse(410, 90,40, 40);
   }
   
   public void checkIfWon(){
     if (totalnum.equals(lottery)) {
        println("you have won");
        text("You have won",130, 330, 150);
        strokeWeight(4);
        stroke(0,255,0);
        frameRate(3);
        
      } else {
        println(loseMsg);
        text("You have lost",130, 330, 150);
        
        strokeWeight(4);
        stroke(255,0,0);
        frameRate(3);
       
      }
   }
  
  
   public void generateNewNumberSet(){
      num1 = int(random(9));
      num2 = int(random(9));
      num3 = int(random(9));
      totalnum[0] = num1;
      totalnum[1] = num2;
      totalnum[2] = num3;
      println(num1, num2, num3);
      println(totalnum);
      
      lot1 = int(random(9));
      lot2 = int(random(9));
      lot3 = int(random(9));
      lottery[0] = lot1;
      lottery[1] = lot2;
      lottery[2] = lot3;
      println(lot1, lot2, lot3);
      println(lottery);
   }
}
