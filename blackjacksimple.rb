
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
cardarray = [1,1,1,1,2,2,2,2,3,3,3,3,4,4,4,4,5,5,5,5,6,6,6,6,7,7,7,7,8,8,8,8,9,9,9,9,10,10,10,10,11,11,11,11,12,12,12,12]
suitarray= [1,2,3,4]
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
puts "shall we begin?"
puts "┌─────────┐" + "┌─────────┐"
puts "|#{firstcard}#{firstsuit}       |" + "|#{secondcard}#{secondsuit}       |"
puts "|         |" + "|         |"
puts "|         |" + "|         |"
puts "|         |" + "|         |"
puts "|       #{firstcard}#{firstsuit}|" + "|       #{secondcard}#{secondsuit}|"
puts "└─────────┘" + "└─────────┘"

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
    #after we sort the cards and make sure 
    cardloop = 2
    cardloop = cardloop+1
    if (cardloop == 3)
        thirdcard = cardnumber
        thirdsuit = suit
        puts "Here you go?"
        puts "┌─────────┐" + "┌─────────┐" + "┌─────────┐"
        puts "|#{firstcard}#{firstsuit}       |" + "|#{secondcard}#{secondsuit}       |" + "|#{thirdcard}#{thirdsuit}       |"
        puts "|         |" + "|         |" + "|         |"
        puts "|         |" + "|         |" + "|         |"
        puts "|         |" + "|         |" + "|         |"
        puts "|       #{firstcard}#{firstsuit}|" + "|       #{secondcard}#{secondsuit}|" + "|       #{thirdcard}#{thirdsuit}|"
        puts "└─────────┘" + "└─────────┘" + "└─────────┘"
    elsif (cardloop==4)
        fourthcard = cardnumber
        fourthsuit = suit
    elsif (cardloop==5)
        fifthcard = cardnumber
        fifthsuit = suit
    end
    puts "would you like to hit again?\n1. HIT ME\n2. Ill stay"
    decision = gets.chomp.to_i
end

    


