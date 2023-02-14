# Now extend the Array class to include my_select that takes a block and returns a new array containing only elements that satisfy the block. Use your my_each method!

class Array


    def my_each(&blk)

        i = 0

        while i < self.length
        blk.call(self[i]) # I was not selecting i here and that was messing it up.
        i += 1
        end

        self

    end

    def my_select(&blk) # I was over thinking this and was trying to reference the my each when I should have just recreated it.

        new_arr = []
        self.my_each { |ele| new_arr << ele if blk.call(ele) }  # I was not passing the ele into the block
        new_arr

    end

end




a = [1, 2, 3]
p a.my_select { |num| num > 1 } # => [2, 3]
p a.my_select { |num| num == 4 } # => []
