String[][] board = {{"a","b","c","d"},{"e","f","g","h"},{"i","j","k"," "}} ;

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
  
  fill(0) ;
  textSize(50);
  
  int moveword = size_button + move ;
  
  text(board[0][0], size_button / 2 ,  size_button  ); 
  text(board[0][1], size_button / 2 + moveword,  size_button  ); 
  text(board[0][2], size_button / 2 + moveword * 2,  size_button  ); 
  text(board[0][3], size_button / 2 + moveword * 3,  size_button  ); 
  
  text(board[1][0], size_button / 2 ,  size_button + moveword ); 
  text(board[1][1], size_button / 2 + moveword,  size_button + moveword ); 
  text(board[1][2], size_button / 2 + moveword * 2,  size_button + moveword ); 
  text(board[1][3], size_button / 2 + moveword * 3,  size_button + moveword ); 
  
  text(board[2][0], size_button / 2 ,  size_button + moveword * 2); 
  text(board[2][1], size_button / 2 + moveword,  size_button + moveword * 2 ); 
  text(board[2][2], size_button / 2 + moveword * 2,  size_button + moveword * 2 ); 
  text(board[2][3], size_button / 2 + moveword * 3,  size_button + moveword * 2 ); 
}




boolean check_result() {
  return true ;
}

void switch_position() {

}
