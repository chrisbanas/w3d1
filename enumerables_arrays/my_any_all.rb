# Write my_any? to return true if any elements of the array satisfy the block and my_all? to return true only if all elements satisfy the block.

class Array

    def my_each(&blk)

        i = 0

        while i < self.length
        blk.call(self[i]) # I have to reference self of i here to hit each element
        i += 1
        end

        self

    end

    def my_any?(&blk)
        self.my_each { |ele| return true if blk.call(ele) }
        false
    end


    def my_all?(&blk)
        self.my_each { |ele| return false if !blk.call(ele) }
        true
    end

end









a = [1, 2, 3]
p a.my_any? { |num| num > 1 } # => true
p a.my_any? { |num| num == 4 } # => false
p a.my_all? { |num| num > 1 } # => false
p a.my_all? { |num| num < 4 } # => true
