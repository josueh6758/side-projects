# a better tic tac toe method
=begin
This project is a result of the CodeNow limited gem to make a tic tac toe game
ive improved the display function and added just some slight touch ups
[0,0][0,1][0,2]
[1,0][1,1][1,2]
[2,0][2,1][2,2]
=end
#====================INITIATE BOARD====================
board =  Array.new (3) {Array.new(3)}
board[0][0] = 1
board[0][1] = 2
board[0][2] = 3
board[1][0] = 4
board[1][1] = 5
board[1][2] = 6
board[2][0] = 7
board[2][1] = 8
board[2][2] = 9
puts board
#==============================================================
#===========================CHECKS IF THE BOARD IS FULL========
puts board.any? {|variable,truth| variable.is_a? Integer}
#==============================================================
#=================================DISPLAY THE FUCKING BOARD============================
puts "#{board[0][0]} | #{board[0][1]} | #{board[0][2]}"
puts "──|───|──"
puts "#{board[1][0]} | #{board[1][1]} | #{board[1][2]}"
puts "──|───|──"
puts "#{board[2][0]} | #{board[2][1]} | #{board[2][2]}"
#======================================================================================
#===================================CHECKS IF COLUMS WINS OCCUR============================================
#for this one i want to catch the board and then using the board ill make a new array containing the colums truths
column1 = [board[0][0], board[1][0], board[2][0]].uniq.size == 1
column2 = [board[0][1], board[1][1], board[2][1]].uniq.size == 1
column3 = [board[0][2], board[1][2], board[2][2]].uniq.size == 1
truthtable = [column1,column2,column3]
puts truthtable.any? {|variable| variable == true}
puts "previous is the ennumerable"
puts truthtable
#===================================================================================================
#============================================CHECKS FOR ANY ROWS=====================================
row1 = [board[0][0], board[0][1], board[0][2]].uniq.size == 1
row2 = [board[1][0], board[1][1], board[1][1]].uniq.size == 1
row3 = [board[2][0], board[2][1], board[2][2]].uniq.size == 1
truthtable = [row1,row2,row3]
puts truthtable.any? {|variable| variable == true}


#============================================CHECKS FOR DIAGONALS=====================================
diag1 = [board[0][0], board[1][1], board[2][2]].uniq.size == 1
diag2 = [board[2][0], board[1][1], board[0][2]].uniq.size == 1

truthtable = [diag1,diag2]

puts truthtable.any? {|variable| variable == true}
#===================================================================================================
#==============================ADD USER IMPUT TO THE CHART==========================================
userimput = "whateever the user sends into here. it should be x or o"
#also they have to send the number on the board
#this clusterfuck passes the number into the board but before it does it checks if the spot right there is an int which it should
#or else it wont do it
again = true
while (again ==  true)
  number =  gets.chomp.to_i
  if (number = 1)
    if (board[0][0]? Integer)
      board[0][0] = userimput
      again = false
    else
      puts "not a valid entry"
      again = true
    end
#number 2
  elsif (number = 2)
    if (board[0][1].is_a? Integer)
      board[0][1] = userimput
      again = false
    else
      puts "that is not a valid entry"
      again = true
    end
#number 3
  elsif (number = 3)
    if (board[0][2].is_a? Integer)
      board[0][2] = userimput
      again = false
    else
      puts "that is not a valid entry"
      again = true
    end
#number 4
  elsif (number = 4)
    if (board[1][0].is_a? Integer)
      board[1][0] = userimput
      again = false
    else
      puts "that is not a valid entry"
      again = true
    end
#number 5
  elsif (number = 5)
    if (board[1][1].is_a? Integer)
      board[1][1] = userimput
      again = false
    else
      puts "that is not a valid entry"
      again = true
    end
#number 6
  elsif (number = 6)
    if (board[1][2].is_a? Integer)
      board[1][2] = userimput
      again = false
    else
      puts "that is not a valid entry"
      again = true
    end
#number 7
  elsif (number = 7)
    if (board[2][0].is_a? Integer)
      board[2][0] = userimput
      again = false
    else
      puts "that is not a valid entry"
      again = true
    end
#number 8
  elsif (number = 8)
    if (board[2][1].is_a? Integer)
      board[2][1] = userimput
      again = false
    else
      puts "that is not a valid entry"
      again = true
    end
#number 9
  elsif (number = 9)
    if (board[2][2].is_a? Integer)
      board[2][2] = userimput
      again = false
    else
      puts "that is not a valid entry"
      again = true
    end
  end
end


#===============================================================
