# Write my_reject to take a block and return a new array excluding elements that satisfy the block.

class Array

    def my_each(&blk)

        i = 0

        while i < self.length
        blk.call(self[i]) # I have to reference self of i here to hit each element
        i += 1
        end

        self

    end




    def my_reject(&blk)
        new_arr = []
        self.my_each { |ele| new_arr << ele if !blk.call(ele) }
        new_arr
    end

end





a = [1, 2, 3]
p a.my_reject { |num| num > 1 } # => [1]
p a.my_reject { |num| num == 4 } # => [1, 2, 3]
