# Write a my_reverse method that returns a new array containing all the elements of the original array in reverse order.


class Array

    def my_reverse
        new_arr = []
        (1..self.length).each { |i| new_arr << self[-i]}
        new_arr
    end

end


p [ "a", "b", "c" ].my_reverse   #=> ["c", "b", "a"]
p [ 1 ].my_reverse               #=> [1]
