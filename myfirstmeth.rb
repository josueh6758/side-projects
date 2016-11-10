#test method
def myfirstmethod (innervariable)
  #so it seems that the method throws the variable and the () right up here catches and renames it
 mysecondmethod(innervariable)
 puts "this is the first method"
end
def mysecondmethod (anotherone)
  anotherone = anotherone + 1
  puts anotherone
  puts "this is the second method"
end
puts "this is my first method"
puts "imput a number"
number =  gets.chomp.to_i

myfirstmethod(number)

=begin
1 it goes to my firstmethod throwing the variable "number"
2 myfirstmethod catches it using the variable "innervariable"
3 now it calls the method mysecondmethod throwing the innervariable AKA number
4 my second method catches it "anotherone" and it now does the function
5 it spits all that shit out
=end
