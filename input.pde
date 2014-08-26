
class Input{
  
String typing = "";    // Variable to store text currently being typed
String saved = "";    // Variable to store saved text when return is hit
int keyCount = typing.length();
int buffSize = 25;
int x = 0;
int y = 0;
Boolean inBuffer = true;
  
void display(int x_, int y_){
  
  // Display everything
  
  x = x_;
  y = y_;
  
  text("Click in this applet and type. \nHit return to save what you typed. ", 25, 40);
  text(typing,x,y);
  
  keyCount = typing.length();
  
}


void input(int buffSize_) {
  
  buffSize = buffSize_;
  
    // If the return key is pressed, save the String and clear it
    if (key == '\n' ) {
        saved = typing;
        // A String can be cleared by setting it equal to ""
        typing = ""; 
      } 
      else {
        // Otherwise, concatenate the String
        // Each character typed by the user is added to the end of the String variable.    
        //This next part lets us delete mistyped characters
      if ((keyCode == BACKSPACE) && (keyCount > 0)) {
        typing = typing.substring(0, typing.length() - 1);
        } 
      else
      if ((key != CODED) && (keyCount < buffSize)) typing += key; 
      }   
    }

}
