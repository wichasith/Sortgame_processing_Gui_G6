void setup() {
  size(400,300) ;
  background(255) ;
}

void draw() {
  display_board(10,80) ;
}

void display_board(int first_position , int size_button ) {
  int move = first_position * 2 ; 
  fill(255,228,225) ;
  
  
  //first row
  rect(first_position,first_position,size_button,size_button) ;
  rect(first_position + move + size_button ,first_position,size_button,size_button) ;
  rect(first_position + (move + size_button) * 2 ,first_position,size_button,size_button) ;
  rect(first_position + (move + size_button) * 3 ,first_position,size_button,size_button) ;
  
  rect(first_position , first_position + move + size_button ,size_button,size_button) ;
  rect(first_position + move + size_button ,first_position + move + size_button ,size_button,size_button) ;
  rect(first_position + (move + size_button) * 2 ,first_position + move + size_button ,size_button,size_button) ;
  rect(first_position + (move + size_button) * 3 ,first_position + move + size_button ,size_button,size_button) ;
  
  rect(first_position,first_position + (move + size_button) * 2,size_button,size_button) ;
  rect(first_position + move + size_button ,first_position + (move + size_button) * 2,size_button,size_button) ;
  rect(first_position + (move + size_button) * 2 ,first_position + (move + size_button) * 2,size_button,size_button) ;
  rect(first_position + (move + size_button) * 3 ,first_position + (move + size_button) * 2,size_button,size_button) ;
  
}

boolean check_result() {
  return true ;
}

void switch_position() {

}
