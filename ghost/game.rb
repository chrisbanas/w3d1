# each player adds one letter onto a growing string
# the goal as an individual is to never complete a word
# you always have to be building a word
# you lose if you have no choice if you have to complete a word

# two players and each player is prompted to enter a char


# have another file with dicitonary as text

# v (it is a valid play as long as a word starts with v but is not an actual word)
# vi
# vis
# visu
# visua
# visual - game ends



# There is a class caled file

# sets are built like a hash but we interact with them like arrays.

require "set" # it is not built into the core ruby pacakge so we have to require it

res = {} # using inject to iterate over the whole array and add those valuse to a hash.



# this sets it to a hash where the keys are the word and the values are true. Better to do it with .each and fastest to check if it is a whole word. but still need to iterate over the whole array to find the .startwiths
File.readlines('dictionary.txt').map(&:chomp)..inject(res) do |acc, ele|
    acc[ele] = true
    acc
end




class Game

    DICTIONARY = File.readlines('dictionary.txt').map(&:chomp).to_set # sets the whole file to an array and use chomp as it adds all new lines and those need to come off. (while it works an array is inefficient for this use case that is why we add the set)

    # sets have constant lookup, but thier ilimitation is restrected to unique elements
    # arrays have a linerar lookup

    DICTIONARY.any? { |ele| ele.start_with?("visual") }

    def initialize

    end

    def play_move
        # get input from the current player
        # three possible outcomes:
            # spells a complete word - game over
            # spells part of word - switch turns and continue
            # invalid move, try again

    end

end
