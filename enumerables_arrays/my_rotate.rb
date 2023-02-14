# Write a method my_rotate that returns a new array containing all the elements of the original array in a rotated order. By default, the array should rotate by one element. If a negative value is given, the array is rotated in the opposite direction.

require "byebug"

class Array

    def my_rotate(num=1)

        # debugger

        if num > 0
            num.times { self.push(self.shift) }
        else
            (num.abs).times { self.unshift(self.pop) }
        end

        self

    end


end


a = [ "a", "b", "c", "d" ]

# they need to be run individually because my way I am redefining the same array

p a.my_rotate         #=> ["b", "c", "d", "a"] < # shift - #push
p a.my_rotate(2)      #=> ["c", "d", "a", "b"] <
p a.my_rotate(-3)     #=> ["b", "c", "d", "a"] > # pop - #unshift
p a.my_rotate(15)     #=> ["d", "a", "b", "c"] <
