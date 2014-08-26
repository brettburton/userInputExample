
// input class example adapted from code by
// Daniel Shiffman
// http://www.learningprocessing.com

Input input1;


void setup() {
  size(300,200);
  
  input1 = new Input();

}

void draw() {
  
  
  background(255);  
// Set the font and fill for text
//  textFont(f);
  fill(0);
  
  input1.display(25,100);
  
}

void keyPressed() {
   input1.input(13);
}


  

