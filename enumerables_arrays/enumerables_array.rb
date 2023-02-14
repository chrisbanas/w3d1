
# Extend the Array class to include a method named my_each that takes a block, calls the block on every element of the array, and returns the original array. Do not use Enumerable's each method. When finished, you should be able to write:

class Array

    def my_each(&blk)

        i = 0

        while i < self.length
        blk.call(self[i]) # I have to reference self of i here to hit each element
        i += 1
        end

        self

    end

    def my_select(&blk) # I was over thinking this and was trying to reference the my each when I should have just recreated it.

        new_arr = []

        self.my_each { |ele| new_arr << ele if blk.call(ele) }


        # i = 0

        # while i < self.length
        # new_arr << self[i] if blk.call(self[i])
        # i += 1
        # end

        new_arr

    end

    def my_reject(&blk)

        new_arr = []

        i = 0

        while i < self.length
        new_arr << self[i] if !blk.call(self[i])
        i += 1
        end

        new_arr

    end

    def my_any?(&blk)

    end


    def my_all?(&blk)

    end



end

# my each
return_value = [1, 2, 3].my_each do |num|
    puts num
   end.my_each do |num|
    puts num
   end
   # => 1
   #    2
   #    3
   #    1
   #    2
   #    3
p return_value

# my select

a = [1, 2, 3]
p a.my_select { |num| num > 1 } # => [2, 3]
p a.my_select { |num| num == 4 } # => []


# my reject

a = [1, 2, 3]
p a.my_reject { |num| num > 1 } # => [1]
p a.my_reject { |num| num == 4 } # => [1, 2, 3]


if __FILE__ == $PROGRAM_NAME

    a = [1, 2, 3]
    p a.my_any? { |num| num > 1 } # => true
    p a.my_any? { |num| num == 4 } # => false
    p a.my_all? { |num| num > 1 } # => false
    p a.my_all? { |num| num < 4 } # => true

end
