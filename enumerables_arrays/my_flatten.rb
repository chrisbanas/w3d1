# my_flatten should return all elements of the array into a new, one-dimensional array. Hint: use recursion!

require "byebug"

class Array

    def my_flatten

        new_array = []

        self.each do |ele|
            if ele.is_a?(Array)
                new_array += ele.my_flatten
            else
                new_array << ele
            end
        end

        new_array

    end



end

p [1, 2, 3, [4, [5, 6]], [[[7]], 8]].my_flatten # => [1, 2, 3, 4, 5, 6, 7, 8]


# iterate through and check if it is an array .to_a

# use inject

# a.length => 5
# a[0] => 1
# a[1] => 2
# a[2] => 3
# a[3] => [4, [5, 6]]
# a[4] => [[[7]], 8]
# a[5] => nil

# [1, 2, 3, 4, 5, 6, 7, 8].length => 8

# array(self)
# does this have other arrays in it
# information from self put it in a new array
# return the array
