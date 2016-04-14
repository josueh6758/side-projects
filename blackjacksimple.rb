
puts "Hello This is blackjack"
=begin
puts "─────────┐"
puts "|         |"
puts "|         |"
puts "|         |"
puts "|         |"
puts "|         |"
puts "|         |"
puts "└─────────┘"
=end
puts "in this game dealer will try to get atleast 16"
#These arrays are the actual card deck and suits
cardarray = [1,1,1,1,2,2,2,2,3,3,3,3,4,4,4,4,5,5,5,5,6,6,6,6,7,7,7,7,8,8,8,8,9,9,9,9,10,10,10,10,11,11,11,11,12,12,12,12]
suitarray= [1,2,3,4]
cardloop = 2
thirdcard,fourthcard,fifthcard = 0,0,0
#this whole loop gives me 2 random cards and assigns them 2 random suits that are then stored as card 1+2
i=0
while (i!=2)
  cardnumber= cardarray.shuffle.first
  cardarray.slice!(cardarray.index(cardnumber))
  if (cardnumber == 10 || cardnumber == 11 || cardnumber == 12)
      if (cardnumber == 10)
        cardnumber= cardnumber.to_s
          cardnumber="J"

        elsif (cardnumber==11)
          cardnumber= cardnumber.to_s
          cardnumber="Q"

        elsif (cardnumber==12)
          cardnumber=cardnumber.to_s
          cardnumber="K"
        end
  end
    if (i==0)
      firstcard = cardnumber
     else
      secondcard = cardnumber
    end
    i= i+1
end
j=0
while(j!=2)
    suit= suitarray.shuffle.first
    if(suit==1)
        suit = suit.to_s
        suit = "♠"
        elsif(suit==2)
        suit = suit.to_s
        suit = "♥"
        elsif(suit==3)
        suit = suit.to_s
        suit = "♦"
        elsif
        suit = suit.to_s
        suit = "♣"
    end
    if (j==0)
        firstsuit= suit
        elsif
        secondsuit= suit
    end
    j=j+1
end
#end of the random card/suit block
#this is the card "shortcut"
line1 = "┌─────────┐" + "┌─────────┐"
line2 = "|#{firstcard}#{firstsuit}       |" + "|#{secondcard}#{secondsuit}       |"
line3 = "|         |" + "|         |"
line4 = "|         |" + "|         |"
line5 = "|         |" + "|         |"
line6 = "|       #{firstcard}#{firstsuit}|" + "|       #{secondcard}#{secondsuit}|"
line7 = "└─────────┘" + "└─────────┘"
#end of the shortcut. This will cut time writing code later one when it gets called
puts "shall we begin?"
puts line1
puts line2
puts line3
puts line4
puts line5
puts line6
puts line7
puts "1. HIT ME\n2. Ill stay"
puts "My Choice:"
decision = gets.chomp.to_i
while ( decision == 1)
    #this is a random card
    cardnumber= cardarray.shuffle.first
    cardarray.slice!(cardarray.index(cardnumber))
    if (cardnumber == 10 || cardnumber == 11 || cardnumber == 12)
        if (cardnumber == 10)
            cardnumber= cardnumber.to_s
            cardnumber="J"

        elsif (cardnumber==11)
            cardnumber= cardnumber.to_s
            cardnumber="Q"

        elsif (cardnumber==12)
            cardnumber=cardnumber.to_s
            cardnumber="K"
        end
    end
    #this randomizes the suit
    suit= suitarray.shuffle.first
    if(suit==1)
        suit = suit.to_s
        suit = "♠"
        elsif(suit==2)
        suit = suit.to_s
        suit = "♥"
        elsif(suit==3)
        suit = suit.to_s
        suit = "♦"
        elsif
        suit = suit.to_s
        suit = "♣"
    end
    #this after says this is the third loop so we need a third card and so on
    cardloop = cardloop + 1
    if (cardloop == 3)
        thirdcard = cardnumber
        thirdsuit = suit
        puts "Here you go"

        line1= line1 + "┌─────────┐"
        line2= line2 + "|#{thirdcard}#{thirdsuit}       |"
        line3= line3 + "|         |"
        line4= line4 + "|         |"
        line5= line5 + "|         |"
        line6= line6 + "|       #{thirdcard}#{thirdsuit}|"
        line7= line7 + "└─────────┘"
        puts line1
        puts line2
        puts line3
        puts line4
        puts line5
        puts line6
        puts line7
    elsif (cardloop==4)
        fourthcard = cardnumber
        fourthsuit = suit
        puts "Here you go"
        line1= line1 + "┌─────────┐"
        line2= line2 + "|#{fourthcard}#{fourthsuit}       |"
        line3= line3 + "|         |"
        line4= line4 + "|         |"
        line5= line5 + "|         |"
        line6= line6 + "|       #{fourthcard}#{fourthsuit}|"
        line7= line7 + "└─────────┘"
        puts line1
        puts line2
        puts line3
        puts line4
        puts line5
        puts line6
        puts line7
    elsif (cardloop==5)
        fifthcard = cardnumber
        fifthsuit = suit
        line1= line1 + "┌─────────┐"
        line2= line2 + "|#{fifthcard}#{fifthsuit}       |"
        line3= line3 + "|         |"
        line4= line4 + "|         |"
        line5= line5 + "|         |"
        line6= line6 + "|       #{fifthcard}#{fifthsuit}|"
        line7= line7 + "└─────────┘"
        puts line1
        puts line2
        puts line3
        puts line4
        puts line5
        puts line6
        puts line7
    end
# since im too lazy to include more cards once it reaches the 5th loop i will automatically terminate the loop if its not the fifth the user will get to hit again
    if (cardloop == 5)
      decision = 0
    else
      puts "would you like another hit?\n1.yes\n2.no thanks"
      decision = gets.chomp.to_i
    end
end
#we have to revert the letters back to numbers to find the total. This line below checks if the variable is a string and if so change it to a 10
while (firstcard.is_a?(String) || secondcard.is_a?(String) || thirdcard.is_a?(String) || fourthcard.is_a?(String) || fifthcard.is_a?(String) )
  if (firstcard.is_a?(String))
    firstcard = 10
    elsif (secondcard.is_a?(String))
      secondcard = 10
    elsif (thirdcard.is_a?(String))
      thirdcard = 10
    elsif (fourthcard.is_a?(String))
      fourthcard = 10
    elsif (fifthcard.is_a?(String))
      fifthcard = 10
  end
end
=begin ow we will try to add these lil shits up by placing an array and testing if there are any ace in there.
the reason for this is that we will compute which setup can get us closer to 21 automatically ace can be either ten or one
=end
totalarray = []
#this code will add the values to the array
totalarray += [firstcard,secondcard,thirdcard,fourthcard,fifthcard]
#checks if theres any aces and if so initiates the code
if (totalarray.count(1)!= 0)
  if (totalarray.count(1) == 1)
    #this section is 1) delete all the ones and then add the "potential" values that an ace could be and then see which gets closest to 21
    totalarray.delete(1)
    testtotal = []
    testtotal += [totalarray.inject(:+)+1,totalarray.inject(:+)+10]
    testtotal.sort!
    while(testtotal.last > 21)
      testtotal.pop()
      if testtotal.empty?
        break
      end
    end
    if testtotal.empty?
        finalresult = "busted!"
      else
        finalresult = testtotal.last
    end
   # if it has two aces
  elsif (totalarray.count(1) == 2)
    totalarray.delete(1)
    testtotal = []
    testtotal += [totalarray.inject(:+)+2,totalarray.inject(:+)+11,totalarray.inject(:+)+20]
    testtotal.sort!
    while(testtotal.last > 21)
      testtotal.pop()
      if testtotal.empty?
        break
      end
    end
    if testtotal.empty?
        finalresult = "busted!"
      else
        finalresult = testtotal.last
    end
  #if it has 3 aces
  elsif (totalarray.count(1) == 3)
    totalarray.delete(1)
    testtotal = []
    testtotal += [totalarray.inject(:+)+3,totalarray.inject(:+)+12,totalarray.inject(:+)+20]
    testtotal.sort!
    while(testtotal.last > 21)
      testtotal.pop()
      if testtotal.empty?
        break
      end
    end
    if testtotal.empty?
        finalresult = "busted!"
      else
        finalresult = testtotal.last
    end
   # if it has 4 aces
  elsif (totalarray.count(1) == 4)
      totalarray.delete(1)
      testtotal = []
      testtotal += [totalarray.inject(:+)+4,totalarray.inject(:+)+13,totalarray.inject(:+)+22]
      testtotal.sort!
      while(testtotal.last > 21)
        testtotal.pop()
      end
      if testtotal.empty?
          finalresult = "busted!"
        else
          finalresult = testtotal.last
      end
  end
else
  finalresult = totalarray.inject(:+)
  if finalresult > 21
    finalresult = "busted!"
  end
end
#final saying
if finalresult == "busted!"
  puts "sorry it seems like you lost :( )"
elsif finalresult == 21
  puts "Congratulations you got 21 exactly! :)"
else
  puts "it seems like you got #{finalresult}"
end
