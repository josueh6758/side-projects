# a better tic tac toe method
=begin
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
board[1][2] = 3
board[2][0] = 7
board[2][1] = 8
board[2][2] = 3
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
