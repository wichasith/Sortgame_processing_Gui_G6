String[][] board = {{"a","b","c","d"},{"e","f","g","h"},{"i","j","k"," "}} ;
int position = 0 ;
String move_to = " " ;

void setup() {
  size(400,300) ;
  background(255) ;
  
}

void draw() {
  background(255) ;
  display_board(10,80) ;
  switch_position() ;
  
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

void mousePressed() {
  if(mouseX > 5 && mouseX < 95 && mouseY > 5 && mouseY < 95){
  position = 1;
  print("a") ;
  }
  if(mouseX > 105 && mouseX < 195 && mouseY > 5 && mouseY < 95){
  position = 2;
  print("b") ;
  }
  if(mouseX > 205 && mouseX < 295 && mouseY > 5 && mouseY < 95){
  position = 3;
  print("c") ;
  }
  if(mouseX > 305 && mouseX < 395 && mouseY > 5 && mouseY < 95){
  position = 4;
  print("d") ;
  }
  if(mouseX > 5 && mouseX < 95 && mouseY > 105 && mouseY < 195){
  position = 5;
  print("e") ;
  }
  if(mouseX > 105 && mouseX < 195 && mouseY > 105 && mouseY < 195){
  position = 6;
  print("f") ;
  }
  if(mouseX > 205 && mouseX < 295 && mouseY > 105 && mouseY < 195){
  position = 7;
  print("g") ;
  }
  if(mouseX > 305 && mouseX < 395 && mouseY > 105 && mouseY < 195){
  position = 8;
  print("h") ;
  }
  if(mouseX > 5 && mouseX < 95 && mouseY > 205 && mouseY < 295){
  position = 9;
  print("i") ;
  }
  if(mouseX > 105 && mouseX < 195 && mouseY > 205 && mouseY < 295){
  position = 10;
  print("j") ;
  }
  if(mouseX > 205 && mouseX < 295 && mouseY > 205 && mouseY < 295){
  position = 11;
  print("k") ;
  }
  if(mouseX > 305 && mouseX < 395 && mouseY > 205 && mouseY < 295){
  position = 12;
  print("_") ;
  }
 
}

boolean check_result() {
  return true ;
}

void switch_position() {
  if (position == 1) {
    check_near(0,0) ;
    move(0,0) ;
  }
  else if (position == 2) {
    check_near(0,1) ;
    move(0,1) ;
  }
  else if (position == 3) {
    check_near(0,2) ;
    move(0,2) ;
  }
  else if (position == 4) {
    check_near(0,3) ;
    move(0,3) ;
  }
  else if (position == 5) {
    check_near(1,0) ;
    move(1,0) ;
  }
  else if (position == 6) {
    check_near(1,1) ;
    move(1,1) ;
  }
  else if (position == 7) {
    check_near(1,2) ;
    move(1,2) ;
  }
  else if (position == 8) {
    check_near(1,3) ;
    move(1,3) ;
  }
  else if (position == 9) {
    check_near(2,0) ;
    move(2,0) ;
  }
  else if (position == 10) {
    check_near(2,1) ;
    move(2,1) ;
  }
  else if (position == 11) {
    check_near(2,2) ;
    move(2,2) ;
  }
  else if (position == 12) {
    check_near(2,3) ;
    move(2,3) ;
  }
}

void swap(int a,int b,int c , int d) {
  String temp = board[a][b] ;
  board[a][b] = board[c][d] ;
  board[c][d] = temp ;
  position = 0 ;
  
}

String check_near(int i, int j) {
  if(board[i][j] != " "){
    if(i + 1 < 3){
      if ( board[i+1][j] == " " ) {
        move_to = "move down" ;
        print();
      }
    }
    if(i - 1 > -1){
    if ( board[i-1][j] == " " ) {
      move_to = "move up" ;
    }
    }
    if(j + 1 < 4){
    if ( board[i][j+1] == " " ) {
      move_to = "move right" ;
    }
    }
    if(j - 1 > -1){
    if ( board[i][j-1] == " " ) {
      move_to = "move left" ;
    }
    }
  
  }
return move_to ;
}

void move(int i , int j) {
  if (move_to == "move up"){
    swap(i,j,i-1,j) ;
    move_to = "" ;
  }
  else if (move_to == "move down"){
    swap(i,j,i+1,j) ;
    move_to = "" ;
  } 
  else if (move_to == "move right"){
    swap(i,j,i,j+1) ;
    move_to = "" ;
  } 
  else if (move_to == "move left"){
    swap(i,j,i,j-1) ;
    move_to = "" ;
  } 
  
}
